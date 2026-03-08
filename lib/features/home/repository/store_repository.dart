import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/network/connection_checker.dart';
import '../../../init_dependencies.dart';
import '../model/store.dart';

part 'store_repository.g.dart';

@riverpod
StoreRepository storeRepository(Ref ref) {
  return StoreRepository(
    client: serviceLocator<http.Client>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
  );
}

class StoreRepository {
  final http.Client client;
  final ConnectionChecker connectionChecker;

  StoreRepository({required this.client, required this.connectionChecker});

  Uri _buildUri(String endpoint, [Map<String, String>? queryParams]) {
    final base = ServerConstants.baseUrl;
    final uri = Uri.parse('$base/$endpoint');
    if (queryParams != null) {
      return uri.replace(queryParameters: queryParams);
    }
    return uri;
  }

  Future<Either<Failure, List<Store>>> getStores() async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.stores);
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      final stores = data
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(stores);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch stores: $e'));
    }
  }
}
