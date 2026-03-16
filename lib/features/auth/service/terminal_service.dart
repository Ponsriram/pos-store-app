import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/network/connection_checker.dart';
import '../../../core/storage/local_storage.dart';
import '../../../init_dependencies.dart';

/// Response from the terminal registration endpoint.
class TerminalRegistrationResponse {
  final String terminalId;
  final String terminalToken;

  TerminalRegistrationResponse({
    required this.terminalId,
    required this.terminalToken,
  });

  factory TerminalRegistrationResponse.fromJson(Map<String, dynamic> json) {
    return TerminalRegistrationResponse(
      terminalId: json['id'] as String,
      terminalToken: (json['token'] ?? json['terminal_token'] ?? '') as String,
    );
  }
}

/// Service for terminal registration and retrieval.
///
/// A terminal represents a physical POS device (e.g. "Front Counter",
/// "Bar POS", "Kitchen POS"). Registration happens once per device and
/// the resulting `terminal_id` + `terminal_token` are persisted locally.
class TerminalService {
  final http.Client _client;
  final ConnectionChecker _connectionChecker;
  final LocalStorage _localStorage;

  TerminalService({
    required http.Client client,
    required ConnectionChecker connectionChecker,
    required LocalStorage localStorage,
  }) : _client = client,
       _connectionChecker = connectionChecker,
       _localStorage = localStorage;

  Uri _buildUri(String endpoint) {
    final base = ServerConstants.baseUrl;
    return Uri.parse('$base/$endpoint');
  }

  /// Register a new terminal for the given store.
  ///
  /// Calls `POST /terminals/register` and persists the result locally.
  Future<Either<Failure, TerminalRegistrationResponse>> registerTerminal({
    required String storeId,
    required String terminalName,
  }) async {
    try {
      if (!await _connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.terminalRegister);
      final response = await _client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'store_id': storeId,
          'terminal_name': terminalName,
          'device_name':
              'pos-store-app', // Providing device_name to fix "Field required"
          'device_identifier':
              'pos-store-device-id', // Providing device_identifier to fix "Field required"
        }),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final registration = TerminalRegistrationResponse.fromJson(data);

      // Persist locally
      await _localStorage.setTerminal(
        registration.terminalId,
        registration.terminalToken,
      );

      log('TerminalService: registered terminal ${registration.terminalId}');
      return Right(registration);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Terminal registration failed: $e'));
    }
  }

  /// Check if a terminal is already registered on this device.
  Future<bool> isRegistered() async {
    final id = await _localStorage.getTerminalId();
    return id != null && id.isNotEmpty;
  }

  /// Get the stored terminal ID.
  Future<String?> getTerminalId() => _localStorage.getTerminalId();

  /// Get the stored terminal token.
  Future<String?> getTerminalToken() => _localStorage.getTerminalToken();

  /// Clear terminal registration (used on full logout).
  Future<void> clearTerminal() => _localStorage.clearTerminal();
}
