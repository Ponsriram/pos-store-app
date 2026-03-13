import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/network/connection_checker.dart';
import '../../../init_dependencies.dart';
import '../model/employee_models.dart';

part 'dashboard_employee_repository.g.dart';

@riverpod
DashboardEmployeeRepository dashboardEmployeeRepository(Ref ref) {
  return DashboardEmployeeRepository(
    client: serviceLocator<http.Client>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
  );
}

class DashboardEmployeeRepository {
  final http.Client client;
  final ConnectionChecker connectionChecker;

  DashboardEmployeeRepository({
    required this.client,
    required this.connectionChecker,
  });

  Uri _buildUri(String endpoint, [Map<String, String>? queryParams]) {
    final base = ServerConstants.baseUrl;
    final uri = Uri.parse('$base/$endpoint');
    if (queryParams != null) {
      return uri.replace(queryParameters: queryParams);
    }
    return uri;
  }

  // ---- List Employees ----

  Future<Either<Failure, List<Employee>>> getEmployees({
    required String storeId,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.employees, {'store_id': storeId});
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      final employees = data
          .map((e) => Employee.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(employees);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch employees: $e'));
    }
  }

  // ---- Create Employee ----

  Future<Either<Failure, Employee>> createEmployee(
    EmployeeCreate employee,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.employees);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(employee.toJson()),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final created = Employee.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(created);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to create employee: $e'));
    }
  }

  // ---- Update Employee ----

  Future<Either<Failure, Employee>> updateEmployee({
    required String employeeId,
    String? name,
    String? phone,
    String? email,
    String? role,
    bool? isActive,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final body = <String, dynamic>{};
      if (name != null) body['name'] = name;
      if (phone != null) body['phone'] = phone;
      if (email != null) body['email'] = email;
      if (role != null) body['role'] = role;
      if (isActive != null) body['is_active'] = isActive;

      final uri = _buildUri('${ApiEndpoints.employees}/$employeeId');
      final response = await client.put(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final updated = Employee.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(updated);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to update employee: $e'));
    }
  }
}
