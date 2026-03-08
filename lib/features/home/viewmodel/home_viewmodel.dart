import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/category.dart';
import '../model/order.dart';
import '../model/product.dart';
import '../model/cart_item.dart';
import '../model/table.dart';
import '../repository/category_repository.dart';
import '../repository/order_repository.dart';
import '../repository/product_repository.dart';
import 'store_viewmodel.dart';

part 'home_viewmodel.g.dart';

// ---------------------------------------------------------------------------
// Categories
// ---------------------------------------------------------------------------

@riverpod
class CategoryList extends _$CategoryList {
  @override
  Future<List<Category>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(categoryRepositoryProvider);
    final result = await repo.getCategories(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (categories) => categories,
    );
  }
}

@riverpod
class SelectedCategoryId extends _$SelectedCategoryId {
  @override
  String? build() => null; // null means "All"

  void select(String? id) => state = id;
}

// ---------------------------------------------------------------------------
// Products (filtered by selected category)
// ---------------------------------------------------------------------------

@riverpod
class ProductList extends _$ProductList {
  @override
  Future<List<Product>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final categoryId = ref.watch(selectedCategoryIdProvider);
    final repo = ref.read(productRepositoryProvider);
    final result = await repo.getProducts(
      storeId: store.id,
      categoryId: categoryId,
    );
    return result.fold(
      (failure) => throw Exception(failure.message),
      (products) => products,
    );
  }
}

// ---------------------------------------------------------------------------
// Active orders
// ---------------------------------------------------------------------------

@riverpod
class ActiveOrders extends _$ActiveOrders {
  @override
  Future<List<Order>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(orderRepositoryProvider);
    final result = await repo.getOrders(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (orders) => orders,
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

// ---------------------------------------------------------------------------
// Cart state (local, not persisted until order creation)
// ---------------------------------------------------------------------------

@riverpod
class Cart extends _$Cart {
  @override
  List<CartItem> build() => [];

  void addItem(Product product) {
    final index = state.indexWhere((e) => e.product.id == product.id);
    if (index >= 0) {
      final existing = state[index];
      state = [
        ...state.sublist(0, index),
        existing.copyWith(quantity: existing.quantity + 1),
        ...state.sublist(index + 1),
      ];
    } else {
      state = [...state, CartItem(product: product)];
    }
  }

  void removeItem(String productId) {
    state = state.where((e) => e.product.id != productId).toList();
  }

  void updateQuantity(String productId, int quantity) {
    if (quantity <= 0) {
      removeItem(productId);
      return;
    }
    final index = state.indexWhere((e) => e.product.id == productId);
    if (index >= 0) {
      final existing = state[index];
      state = [
        ...state.sublist(0, index),
        existing.copyWith(quantity: quantity),
        ...state.sublist(index + 1),
      ];
    }
  }

  void clear() => state = [];

  double get subtotal =>
      state.fold(0, (sum, item) => sum + item.product.price * item.quantity);

  double get taxAmount => state.fold(
    0,
    (sum, item) =>
        sum +
        (item.product.price * item.quantity * item.product.taxPercent / 100),
  );
}

// ---------------------------------------------------------------------------
// Order type selection
// ---------------------------------------------------------------------------

@riverpod
class SelectedOrderType extends _$SelectedOrderType {
  @override
  String build() => 'dine_in';

  void select(String type) => state = type;
}

// ---------------------------------------------------------------------------
// Selected table (for dine-in)
// ---------------------------------------------------------------------------

@riverpod
class SelectedTable extends _$SelectedTable {
  @override
  DineInTable? build() => null;

  void select(DineInTable? table) => state = table;
}

// ---------------------------------------------------------------------------
// Payment method
// ---------------------------------------------------------------------------

@riverpod
class SelectedPaymentMethod extends _$SelectedPaymentMethod {
  @override
  String build() => 'cash';

  void select(String method) => state = method;
}

// ---------------------------------------------------------------------------
// Order operations viewmodel
// ---------------------------------------------------------------------------

@riverpod
class OrderOperations extends _$OrderOperations {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> placeOrder() async {
    final store = ref.read(selectedStoreProvider);
    if (store == null) {
      state = AsyncError('No store selected', StackTrace.current);
      return false;
    }

    final cartItems = ref.read(cartProvider);
    if (cartItems.isEmpty) {
      state = AsyncError('Cart is empty', StackTrace.current);
      return false;
    }

    state = const AsyncLoading();

    final orderType = ref.read(selectedOrderTypeProvider);
    final table = ref.read(selectedTableProvider);
    final paymentMethod = ref.read(selectedPaymentMethodProvider);

    final orderCreate = OrderCreate(
      storeId: store.id,
      orderType: orderType,
      tableId: orderType == 'dine_in' ? table?.id : null,
      items: cartItems
          .map(
            (e) => OrderItemCreate(
              productId: e.product.id,
              quantity: e.quantity,
              price: e.product.price,
              notes: e.notes,
            ),
          )
          .toList(),
    );

    final repo = ref.read(orderRepositoryProvider);
    final result = await repo.createOrder(orderCreate);

    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (order) async {
        // Create payment
        final cart = ref.read(cartProvider.notifier);
        final paymentResult = await repo.createPayment(
          PaymentCreate(
            orderId: order.id,
            paymentMethod: paymentMethod,
            amount: order.grandTotal,
          ),
        );

        return paymentResult.fold(
          (failure) {
            state = AsyncError(failure.message, StackTrace.current);
            return false;
          },
          (_) {
            cart.clear();
            ref.invalidate(activeOrdersProvider);
            state = const AsyncData(null);
            return true;
          },
        );
      },
    );
  }
}
