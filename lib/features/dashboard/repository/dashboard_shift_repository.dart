import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/network/connection_checker.dart';
import '../../../init_dependencies.dart';
import '../model/shift_models.dart';

part 'dashboard_shift_repository.g.dart';

@riverpod
DashboardShiftRepository dashboardShiftRepository(Ref ref) {
  return DashboardShiftRepository(
    client: serviceLocator<http.Client>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
  );
}

class DashboardShiftRepository {
  final http.Client client;
  final ConnectionChecker connectionChecker;

  DashboardShiftRepository({
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

  // ---- List Shifts ----

  Future<Either<Failure, List<Shift>>> getShifts({
    required String storeId,
    String? status,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final params = <String, String>{'store_id': storeId};
      if (status != null) params['status'] = status;

      final uri = _buildUri(ApiEndpoints.shifts, params);
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      final shifts = data
          .map((e) => Shift.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(shifts);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch shifts: $e'));
    }
  }

  // ---- Get Shift ----

  Future<Either<Failure, Shift>> getShift({required String shiftId}) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.shiftById(shiftId));
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final shift = Shift.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(shift);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch shift: $e'));
    }
  }

  // ---- Open Shift ----

  Future<Either<Failure, Shift>> openShift(ShiftOpen shiftOpen) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.shifts);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(shiftOpen.toJson()),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final shift = Shift.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(shift);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to open shift: $e'));
    }
  }

  // ---- Close Shift ----

  Future<Either<Failure, Shift>> closeShift({
    required String shiftId,
    required ShiftClose shiftClose,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.shiftClose(shiftId));
      final response = await client.put(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(shiftClose.toJson()),
      );

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final shift = Shift.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(shift);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to close shift: $e'));
    }
  }
}
