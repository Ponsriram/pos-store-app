import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../home/model/store.dart';
import '../model/store_models.dart';
import '../repository/dashboard_store_repository.dart';

part 'stores_viewmodel.g.dart';

// ---------------------------------------------------------------------------
// Dashboard Store List
// ---------------------------------------------------------------------------

@riverpod
class DashboardStoreList extends _$DashboardStoreList {
  @override
  Future<List<Store>> build() async {
    final repo = ref.read(dashboardStoreRepositoryProvider);
    final result = await repo.getStores();
    return result.fold(
      (failure) => throw Exception(failure.message),
      (stores) => stores,
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

// ---------------------------------------------------------------------------
// Create Store
// ---------------------------------------------------------------------------

@riverpod
class CreateStoreAction extends _$CreateStoreAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> createStore(StoreCreate store) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardStoreRepositoryProvider);
    final result = await repo.createStore(store);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(dashboardStoreListProvider);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Create Terminal
// ---------------------------------------------------------------------------

@riverpod
class CreateTerminalAction extends _$CreateTerminalAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> createTerminal(POSTerminalCreate terminal) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardStoreRepositoryProvider);
    final result = await repo.createTerminal(terminal);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Create Table
// ---------------------------------------------------------------------------

@riverpod
class CreateTableAction extends _$CreateTableAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> createTable(DineInTableCreate table) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardStoreRepositoryProvider);
    final result = await repo.createTable(table);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        return true;
      },
    );
  }
}
