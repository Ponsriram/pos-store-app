import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/network/connection_checker.dart';
import '../../../init_dependencies.dart';
import '../model/product.dart';

part 'product_repository.g.dart';

@riverpod
ProductRepository productRepository(Ref ref) {
  return ProductRepository(
    client: serviceLocator<http.Client>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
  );
}

class ProductRepository {
  final http.Client client;
  final ConnectionChecker connectionChecker;

  ProductRepository({required this.client, required this.connectionChecker});

  Uri _buildUri(String endpoint, [Map<String, String>? queryParams]) {
    final base = ServerConstants.baseUrl;
    final uri = Uri.parse('$base/$endpoint');
    if (queryParams != null) {
      return uri.replace(queryParameters: queryParams);
    }
    return uri;
  }

  Future<Either<Failure, List<Product>>> getProducts({
    required String storeId,
    String? categoryId,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final params = <String, String>{'store_id': storeId};
      if (categoryId != null) {
        params['category_id'] = categoryId;
      }

      final uri = _buildUri(ApiEndpoints.products, params);
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      final products = data
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(products);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch products: $e'));
    }
  }
}
