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
