import 'package:fpdart/fpdart.dart';

import '../../../core/error/failure.dart';
import '../../../core/storage/local_storage.dart';
import '../../home/model/store.dart';
import '../../home/repository/store_repository.dart';

/// Service layer for store fetching and selection.
///
/// Wraps [StoreRepository] + [LocalStorage] to handle
/// fetching stores, selecting a store, and clearing the selection.
class StoreService {
  final StoreRepository _storeRepo;
  final LocalStorage _localStorage;

  StoreService({
    required StoreRepository storeRepo,
    required LocalStorage localStorage,
  })  : _storeRepo = storeRepo,
        _localStorage = localStorage;

  /// Fetch all stores for the authenticated admin.
  Future<Either<Failure, List<Store>>> fetchStores() {
    return _storeRepo.getStores();
  }

  /// Save the selected store ID to local storage.
  Future<void> selectStore(String storeId) {
    return _localStorage.setSelectedStoreId(storeId);
  }

  /// Get the currently selected store ID from local storage.
  Future<String?> getSelectedStoreId() {
    return _localStorage.getSelectedStoreId();
  }

  /// Clear the selected store ID.
  Future<void> clearSelectedStore() {
    return _localStorage.clearSelectedStoreId();
  }
}
