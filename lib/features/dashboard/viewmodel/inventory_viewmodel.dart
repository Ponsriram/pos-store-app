import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../home/viewmodel/store_viewmodel.dart';
import '../model/inventory_models.dart';
import '../repository/dashboard_inventory_repository.dart';

part 'inventory_viewmodel.g.dart';

// ---------------------------------------------------------------------------
// Inventory Item List
// ---------------------------------------------------------------------------

@riverpod
class InventoryItemList extends _$InventoryItemList {
  @override
  Future<List<InventoryItem>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.getItems(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (items) => items,
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

// ---------------------------------------------------------------------------
// Stock Levels
// ---------------------------------------------------------------------------

@riverpod
class StockLevelList extends _$StockLevelList {
  @override
  Future<List<StockLevel>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.getStockLevels(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (levels) => levels,
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

// ---------------------------------------------------------------------------
// Inventory Units
// ---------------------------------------------------------------------------

@riverpod
class InventoryUnitList extends _$InventoryUnitList {
  @override
  Future<List<InventoryUnit>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.getUnits(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (units) => units,
    );
  }
}

// ---------------------------------------------------------------------------
// Inventory Locations
// ---------------------------------------------------------------------------

@riverpod
class InventoryLocationList extends _$InventoryLocationList {
  @override
  Future<List<InventoryLocation>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.getLocations(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (locations) => locations,
    );
  }
}

// ---------------------------------------------------------------------------
// Create Inventory Item
// ---------------------------------------------------------------------------

@riverpod
class CreateInventoryItemAction extends _$CreateInventoryItemAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> createItem(InventoryItemCreate item) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.createItem(item);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(inventoryItemListProvider);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Update Inventory Item
// ---------------------------------------------------------------------------

@riverpod
class UpdateInventoryItemAction extends _$UpdateInventoryItemAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> updateItem(String itemId, InventoryItemUpdate update) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.updateItem(itemId, update);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(inventoryItemListProvider);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Adjust Stock
// ---------------------------------------------------------------------------

@riverpod
class AdjustStockAction extends _$AdjustStockAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> adjustStock(StockAdjustmentCreate adjustment) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.adjustStock(adjustment);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(stockLevelListProvider);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Create Inventory Unit
// ---------------------------------------------------------------------------

@riverpod
class CreateInventoryUnitAction extends _$CreateInventoryUnitAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> createUnit(InventoryUnitCreate unit) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.createUnit(unit);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(inventoryUnitListProvider);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Create Inventory Location
// ---------------------------------------------------------------------------

@riverpod
class CreateInventoryLocationAction extends _$CreateInventoryLocationAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> createLocation(InventoryLocationCreate location) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.createLocation(location);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(inventoryLocationListProvider);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Toggle Item Availability
// ---------------------------------------------------------------------------

@riverpod
class ToggleItemAvailabilityAction extends _$ToggleItemAvailabilityAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> toggle(String itemId, bool isActive) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.toggleItemAvailability(itemId, isActive);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(inventoryItemListProvider);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Recipe Detail
// ---------------------------------------------------------------------------

@riverpod
Future<Recipe> recipeDetail(Ref ref, String recipeId) async {
  final repo = ref.read(dashboardInventoryRepositoryProvider);
  final result = await repo.getRecipe(recipeId);
  return result.fold(
    (failure) => throw Exception(failure.message),
    (recipe) => recipe,
  );
}

// ---------------------------------------------------------------------------
// Create Recipe
// ---------------------------------------------------------------------------

@riverpod
class CreateRecipeAction extends _$CreateRecipeAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<Recipe?> createRecipe(RecipeCreate recipe) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.createRecipe(recipe);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return null;
      },
      (created) {
        state = const AsyncData(null);
        return created;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Update Recipe
// ---------------------------------------------------------------------------

@riverpod
class UpdateRecipeAction extends _$UpdateRecipeAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> updateRecipe(String recipeId, RecipeUpdate update) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.updateRecipe(recipeId, update);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(recipeDetailProvider(recipeId));
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Transfers List
// ---------------------------------------------------------------------------

@riverpod
class TransferList extends _$TransferList {
  final List<InventoryTransfer> _transfers = [];

  @override
  List<InventoryTransfer> build() => _transfers;

  void addTransfer(InventoryTransfer transfer) {
    state = [transfer, ...state];
  }

  void updateStatus(String transferId, String status) {
    state = state
        .map((t) => t.id == transferId ? t.copyWith(status: status) : t)
        .toList();
  }
}

// ---------------------------------------------------------------------------
// Create Transfer
// ---------------------------------------------------------------------------

@riverpod
class CreateTransferAction extends _$CreateTransferAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> createTransfer(TransferCreate transfer) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.createTransfer(transfer);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (created) {
        state = const AsyncData(null);
        ref.read(transferListProvider.notifier).addTransfer(created);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Update Transfer Status
// ---------------------------------------------------------------------------

@riverpod
class UpdateTransferStatusAction extends _$UpdateTransferStatusAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> updateStatus(String transferId, String status) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.updateTransferStatus(transferId, status);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref
            .read(transferListProvider.notifier)
            .updateStatus(transferId, status);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Out Of Stock List
// ---------------------------------------------------------------------------

@riverpod
class OutOfStockList extends _$OutOfStockList {
  @override
  Future<List<OutOfStockItem>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(dashboardInventoryRepositoryProvider);
    final result = await repo.getOutOfStockItems(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (items) => items,
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}
