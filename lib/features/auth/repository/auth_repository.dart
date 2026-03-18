import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/network/connection_checker.dart';
import '../../../init_dependencies.dart';
import '../model/auth_response.dart';

part 'auth_repository.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository(
    client: serviceLocator<http.Client>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
  );
}

class AuthRepository {
  final http.Client client;
  final ConnectionChecker connectionChecker;

  AuthRepository({required this.client, required this.connectionChecker});

  Uri _buildUri(String endpoint) {
    final base = ServerConstants.baseUrl;
    return Uri.parse('$base/$endpoint');
  }

  /// Employee login with employee code and PIN.
  Future<Either<Failure, AuthResponse>> login({
    required String employeeCode,
    required String pin,
  }) async {
    log('AuthRepository: employee login called for $employeeCode');

    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.login);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'employee_code': employeeCode, 'pin': pin}),
      ).timeout(const Duration(seconds: 10));

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final authResponse = AuthResponse.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );

      log('AuthRepository: employee login successful for ${authResponse.employeeId}');
      return Right(authResponse);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Login failed: ${e.toString()}'));
    }
  }
}
