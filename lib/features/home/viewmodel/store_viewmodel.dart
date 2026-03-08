import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/store.dart';
import '../repository/store_repository.dart';

part 'store_viewmodel.g.dart';

/// Holds the currently selected store.
@Riverpod(keepAlive: true)
class SelectedStore extends _$SelectedStore {
  @override
  Store? build() => null;

  void select(Store store) => state = store;

  void clear() => state = null;
}

/// Fetches all stores for the authenticated user.
@riverpod
class StoreList extends _$StoreList {
  @override
  Future<List<Store>> build() async {
    final repo = ref.read(storeRepositoryProvider);
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
