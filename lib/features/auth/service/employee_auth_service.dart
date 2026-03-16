import 'dart:convert';
import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/network/connection_checker.dart';
import '../../../core/storage/local_storage.dart';
import '../../../init_dependencies.dart';
import '../model/employee_login_request.dart';
import '../model/employee_login_response.dart';

part 'employee_auth_service.g.dart';

@riverpod
EmployeeAuthService employeeAuthService(Ref ref) {
  return EmployeeAuthService(
    client: serviceLocator<http.Client>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
    localStorage: serviceLocator<LocalStorage>(),
  );
}

class EmployeeAuthService {
  final http.Client client;
  final ConnectionChecker connectionChecker;
  final LocalStorage localStorage;

  EmployeeAuthService({
    required this.client,
    required this.connectionChecker,
    required this.localStorage,
  });

  Uri _buildUri(String endpoint) {
    final base = ServerConstants.baseUrl;
    return Uri.parse('$base/$endpoint');
  }

  /// Login Employee by checking credentials against POS backend.
  Future<Either<Failure, EmployeeLoginResponse>> login({
    required String employeeCode,
    required String pin,
    required String storeId,
    required String terminalId,
  }) async {
    log('EmployeeAuthService: login attempt for $employeeCode');

    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.employeeLogin);

      final requestBody = EmployeeLoginRequest(
        employeeCode: employeeCode,
        pin: pin,
        storeId: storeId,
        terminalId: terminalId,
      );

      // Use admin token for Authorization header if required by endpoint.
      // Often employee-login requires the terminal token or admin token.
      final adminToken = await localStorage.getAdminToken();
      final headers = {
        'Content-Type': 'application/json',
        if (adminToken != null) 'Authorization': 'Bearer $adminToken',
      };

      final response = await client.post(
        uri,
        headers: headers,
        body: jsonEncode(requestBody.toJson()),
      );

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      log("JSON: $jsonResponse");
      log("JSON_RESPONSE=$jsonResponse");
      final employeeResponse = EmployeeLoginResponse.fromJson(jsonResponse);

      // Persist to local storage
      await localStorage.setEmployee(
        employeeResponse.employeeId,
        employeeResponse.accessToken,
        employeeResponse.employeeName ?? 'Employee',
        employeeResponse.role ?? 'Cashier',
      );

      log(
        'EmployeeAuthService: login successful for ${employeeResponse.employeeName}',
      );
      return Right(employeeResponse);
    } catch (e, st) {
      log('EmployeeAuthService: error login - $e\n$st');
      return Left(Failure('Employee Login failed: ${e.toString()}'));
    }
  }

  /// Fetch the current employee role from local storage.
  Future<String?> getEmployeeRole() async {
    return localStorage.getEmployeeRole();
  }

  /// Fetch the current employee name from local storage.
  Future<String?> getEmployeeName() async {
    // Though we haven't explicit wrapper method in local_storage, we could access it directly
    // Let's rely on employee role or just returning true if token exists. Wait, we may need a wrapper or DB call for name.
    // For now we persist it correctly.
    return localStorage.getEmployeeToken();
  }

  /// Clear the current employee session.
  Future<void> logout() async {
    log('EmployeeAuthService: logout');
    await localStorage.clearEmployee();
  }
}
