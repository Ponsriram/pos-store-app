import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/network/connection_checker.dart';
import '../../../init_dependencies.dart';
import '../model/inventory_models.dart';

part 'dashboard_inventory_repository.g.dart';

@riverpod
DashboardInventoryRepository dashboardInventoryRepository(Ref ref) {
  return DashboardInventoryRepository(
    client: serviceLocator<http.Client>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
  );
}

class DashboardInventoryRepository {
  final http.Client client;
  final ConnectionChecker connectionChecker;

  DashboardInventoryRepository({
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

  // ---- Items ----

  Future<Either<Failure, List<InventoryItem>>> getItems({
    required String storeId,
    bool activeOnly = false,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.inventoryItems, {
        'store_id': storeId,
        'active_only': activeOnly.toString(),
      });
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      final items = data
          .map((e) => InventoryItem.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(items);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch inventory items: $e'));
    }
  }

  Future<Either<Failure, InventoryItem>> createItem(
    InventoryItemCreate item,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.inventoryItems);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(item.toJson()),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final created = InventoryItem.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(created);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to create inventory item: $e'));
    }
  }

  Future<Either<Failure, InventoryItem>> updateItem(
    String itemId,
    InventoryItemUpdate update,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.inventoryItemById(itemId));
      final response = await client.put(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(update.toJson()),
      );

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final updated = InventoryItem.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(updated);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to update inventory item: $e'));
    }
  }

  // ---- Stock ----

  Future<Either<Failure, List<StockLevel>>> getStockLevels({
    required String storeId,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.inventoryStock, {'store_id': storeId});
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      final levels = data
          .map((e) => StockLevel.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(levels);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch stock levels: $e'));
    }
  }

  Future<Either<Failure, StockAdjustmentResponse>> adjustStock(
    StockAdjustmentCreate adjustment,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.inventoryStockAdjustments);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(adjustment.toJson()),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final created = StockAdjustmentResponse.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(created);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to adjust stock: $e'));
    }
  }

  // ---- Units ----

  Future<Either<Failure, List<InventoryUnit>>> getUnits({
    required String storeId,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.inventoryUnits, {'store_id': storeId});
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      final units = data
          .map((e) => InventoryUnit.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(units);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch units: $e'));
    }
  }

  // ---- Locations ----

  Future<Either<Failure, List<InventoryLocation>>> getLocations({
    required String storeId,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.inventoryLocations, {
        'store_id': storeId,
      });
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      final locations = data
          .map((e) => InventoryLocation.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(locations);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch locations: $e'));
    }
  }

  // ---- Create Unit ----

  Future<Either<Failure, InventoryUnit>> createUnit(
    InventoryUnitCreate unit,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }
      final uri = _buildUri(ApiEndpoints.inventoryUnits);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(unit.toJson()),
      );
      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }
      final created = InventoryUnit.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(created);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to create unit: $e'));
    }
  }

  // ---- Create Location ----

  Future<Either<Failure, InventoryLocation>> createLocation(
    InventoryLocationCreate location,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }
      final uri = _buildUri(ApiEndpoints.inventoryLocations);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(location.toJson()),
      );
      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }
      final created = InventoryLocation.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(created);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to create location: $e'));
    }
  }

  // ---- Toggle Item Availability ----

  Future<Either<Failure, InventoryItem>> toggleItemAvailability(
    String itemId,
    bool isActive,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }
      final uri = _buildUri(ApiEndpoints.inventoryItemAvailability(itemId));
      final response = await client.put(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(ItemAvailabilityUpdate(isActive: isActive).toJson()),
      );
      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }
      final updated = InventoryItem.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(updated);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to update item availability: $e'));
    }
  }

  // ---- Recipes ----

  Future<Either<Failure, Recipe>> getRecipe(String recipeId) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }
      final uri = _buildUri(ApiEndpoints.inventoryRecipeById(recipeId));
      final response = await client.get(uri);
      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }
      final recipe = Recipe.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(recipe);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch recipe: $e'));
    }
  }

  Future<Either<Failure, Recipe>> createRecipe(RecipeCreate recipe) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }
      final uri = _buildUri(ApiEndpoints.inventoryRecipes);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(recipe.toJson()),
      );
      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }
      final created = Recipe.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(created);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to create recipe: $e'));
    }
  }

  Future<Either<Failure, Recipe>> updateRecipe(
    String recipeId,
    RecipeUpdate update,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }
      final uri = _buildUri(ApiEndpoints.inventoryRecipeById(recipeId));
      final response = await client.put(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(update.toJson()),
      );
      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }
      final updated = Recipe.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(updated);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to update recipe: $e'));
    }
  }

  // ---- Transfers ----

  Future<Either<Failure, InventoryTransfer>> createTransfer(
    TransferCreate transfer,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }
      final uri = _buildUri(ApiEndpoints.inventoryTransfers);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(transfer.toJson()),
      );
      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }
      final created = InventoryTransfer.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(created);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to create transfer: $e'));
    }
  }

  Future<Either<Failure, InventoryTransfer>> updateTransferStatus(
    String transferId,
    String status,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }
      final uri = _buildUri(ApiEndpoints.inventoryTransferStatus(transferId));
      final response = await client.put(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(TransferStatusUpdate(status: status).toJson()),
      );
      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }
      final updated = InventoryTransfer.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(updated);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to update transfer status: $e'));
    }
  }

  // ---- Out Of Stock ----

  Future<Either<Failure, List<OutOfStockItem>>> getOutOfStockItems({
    required String storeId,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }
      final uri = _buildUri(ApiEndpoints.inventoryOutOfStock, {
        'store_id': storeId,
      });
      final response = await client.get(uri);
      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }
      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      final items = data
          .map((e) => OutOfStockItem.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(items);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch out-of-stock items: $e'));
    }
  }
}
