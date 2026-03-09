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
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(dashboardProductListProvider);
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
        return true;
      },
    );
  }
}
