import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/network/connection_checker.dart';
import '../../../init_dependencies.dart';
import '../../home/model/category.dart';
import '../../home/model/product.dart';
import '../model/product_models.dart';

part 'dashboard_product_repository.g.dart';

@riverpod
DashboardProductRepository dashboardProductRepository(Ref ref) {
  return DashboardProductRepository(
    client: serviceLocator<http.Client>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
  );
}

class DashboardProductRepository {
  final http.Client client;
  final ConnectionChecker connectionChecker;

  DashboardProductRepository({
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

  Future<Either<Failure, List<Product>>> getProducts({
    required String storeId,
    String? categoryId,
    bool activeOnly = false,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final params = <String, String>{
        'store_id': storeId,
        'active_only': activeOnly.toString(),
      };
      if (categoryId != null) params['category_id'] = categoryId;

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

  Future<Either<Failure, Product>> createProduct(ProductCreate product) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.products);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(product.toJson()),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final created = Product.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(created);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to create product: $e'));
    }
  }

  Future<Either<Failure, Product>> updateProduct(
    String productId,
    ProductUpdate update,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.productById(productId));
      final response = await client.put(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(update.toJson()),
      );

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final updated = Product.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(updated);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to update product: $e'));
    }
  }

  Future<Either<Failure, List<Category>>> getCategories({
    required String storeId,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.categories, {'store_id': storeId});
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      final categories = data
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(categories);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch categories: $e'));
    }
  }

  Future<Either<Failure, Category>> createCategory(
    CategoryCreate category,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.categories);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(category.toJson()),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final created = Category.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(created);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to create category: $e'));
    }
  }

  Future<Either<Failure, void>> deleteCategory(String categoryId) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.categoryById(categoryId));
      final response = await client.delete(uri);

      if (response.statusCode == 204 || response.statusCode == 200) {
        return const Right(null);
      }

      if (response.statusCode == 409) {
        return const Left(
          Failure('Products are still assigned to this category.', 409),
        );
      }

      final message = parsePydanticError(response.body);
      return Left(Failure(message, response.statusCode));
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to delete category: $e'));
    }
  }

  Future<Either<Failure, void>> deleteProduct(String productId) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.productById(productId));
      final response = await client.delete(uri);

      if (response.statusCode == 204 || response.statusCode == 200) {
        return const Right(null);
      }

      final message = parsePydanticError(response.body);
      return Left(Failure(message, response.statusCode));
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to delete product: $e'));
    }
  }
}
