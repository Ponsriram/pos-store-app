import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../home/model/category.dart';
import '../../home/model/product.dart';
import '../../home/viewmodel/store_viewmodel.dart';
import '../model/product_models.dart';
import '../repository/dashboard_product_repository.dart';

part 'products_viewmodel.g.dart';

// ---------------------------------------------------------------------------
// Dashboard Product List
// ---------------------------------------------------------------------------

@riverpod
class DashboardProductList extends _$DashboardProductList {
  @override
  Future<List<Product>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final categoryId = ref.watch(dashboardProductCategoryFilterProvider);
    final repo = ref.read(dashboardProductRepositoryProvider);
    final result = await repo.getProducts(
      storeId: store.id,
      categoryId: categoryId,
    );
    return result.fold(
      (failure) => throw Exception(failure.message),
      (products) => products,
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }

  /// Optimistically removes a product from the current list without re-fetching.
  void removeProduct(String productId) {
    final current = state;
    if (current is AsyncData<List<Product>>) {
      state = AsyncData(current.value.where((p) => p.id != productId).toList());
    }
  }
}

// ---------------------------------------------------------------------------
// Dashboard Category List (for product management)
// ---------------------------------------------------------------------------

@riverpod
class DashboardCategoryList extends _$DashboardCategoryList {
  @override
  Future<List<Category>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(dashboardProductRepositoryProvider);
    final result = await repo.getCategories(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (categories) => categories,
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

// ---------------------------------------------------------------------------
// Category filter
// ---------------------------------------------------------------------------

@riverpod
class DashboardProductCategoryFilter extends _$DashboardProductCategoryFilter {
  @override
  String? build() => null;

  void select(String? categoryId) => state = categoryId;
}

// ---------------------------------------------------------------------------
// Create Product
// ---------------------------------------------------------------------------

@riverpod
class CreateProductAction extends _$CreateProductAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> createProduct(ProductCreate product) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardProductRepositoryProvider);
    final result = await repo.createProduct(product);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(dashboardProductListProvider);
        ref.invalidate(dashboardCategoryListProvider);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Update Product
// ---------------------------------------------------------------------------

@riverpod
class UpdateProductAction extends _$UpdateProductAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> updateProduct(String productId, ProductUpdate update) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardProductRepositoryProvider);
    final result = await repo.updateProduct(productId, update);
    if (!ref.mounted) return result.isRight();
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
// Delete Product (soft delete)
// ---------------------------------------------------------------------------

@riverpod
class DeleteProductAction extends _$DeleteProductAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> deleteProduct(String productId) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardProductRepositoryProvider);
    final result = await repo.deleteProduct(productId);
    if (!ref.mounted) {
      return result.isRight();
    }
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
// Create Category
// ---------------------------------------------------------------------------

@riverpod
class CreateCategoryAction extends _$CreateCategoryAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> createCategory(CategoryCreate category) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardProductRepositoryProvider);
    final result = await repo.createCategory(category);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(dashboardCategoryListProvider);
        ref.invalidate(dashboardProductListProvider);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Delete Category
// ---------------------------------------------------------------------------

@riverpod
class DeleteCategoryAction extends _$DeleteCategoryAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  /// Returns a tuple-like result: true = success, false = generic failure.
  /// When the backend returns 409, the failure message contains `409` info
  /// so the UI can show a special dialog.
  Future<({bool success, bool isConflict, String? errorMessage})>
  deleteCategory(String categoryId) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardProductRepositoryProvider);
    final result = await repo.deleteCategory(categoryId);
    // Guard: provider may have been disposed while the request was in-flight.
    if (!ref.mounted) {
      return result.fold(
        (failure) => (
          success: false,
          isConflict: failure.statusCode == 409,
          errorMessage: failure.message,
        ),
        (_) => (success: true, isConflict: false, errorMessage: null),
      );
    }
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return (
          success: false,
          isConflict: failure.statusCode == 409,
          errorMessage: failure.message,
        );
      },
      (_) {
        state = const AsyncData(null);
        return (success: true, isConflict: false, errorMessage: null);
      },
    );
  }
}
