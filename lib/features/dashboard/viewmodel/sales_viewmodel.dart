import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../home/model/order.dart';
import '../../home/viewmodel/store_viewmodel.dart';
import '../repository/dashboard_sales_repository.dart';

part 'sales_viewmodel.g.dart';

// ---------------------------------------------------------------------------
// Sales Order List
// ---------------------------------------------------------------------------

@riverpod
class SalesOrderList extends _$SalesOrderList {
  @override
  Future<List<Order>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final statusFilter = ref.watch(salesStatusFilterProvider);
    final paymentFilter = ref.watch(salesPaymentFilterProvider);
    final repo = ref.read(dashboardSalesRepositoryProvider);
    final result = await repo.getOrders(
      storeId: store.id,
      paymentStatus: paymentFilter == 'cancelled' ? null : paymentFilter,
    );
    return result.fold((failure) => throw Exception(failure.message), (orders) {
      var filtered = orders;

      if (paymentFilter == 'cancelled') {
        filtered = filtered
            .where((o) => o.status.toLowerCase() == 'cancelled')
            .toList(growable: false);
      }

      if (statusFilter == null) return filtered;
      return filtered
          .where((o) => _matchesSalesStatus(o, statusFilter))
          .toList(growable: false);
    });
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }

  bool _matchesSalesStatus(Order order, String filter) {
    final status = order.status.toLowerCase();
    final payment = order.paymentStatus.toLowerCase();

    if (filter == 'paid') {
      return payment == 'completed' || status == 'paid';
    }

    return switch (filter) {
      'open' => status == 'open' && payment != 'completed',
      'in_kitchen' => status == 'sent_to_kitchen' || status == 'preparing',
      'ready' =>
        payment != 'completed' &&
            {
              'ready',
              'served',
              'handed_over',
              'out_for_delivery',
              'delivered',
            }.contains(status),
      'completed' => status == 'completed',
      'cancelled' => status == 'cancelled',
      _ => status == filter,
    };
  }
}

// ---------------------------------------------------------------------------
// Single Order Detail
// ---------------------------------------------------------------------------

@riverpod
class SalesOrderDetail extends _$SalesOrderDetail {
  @override
  Future<Order?> build() async => null;

  Future<void> loadOrder(String orderId) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardSalesRepositoryProvider);
    final result = await repo.getOrderById(orderId);
    state = result.fold(
      (failure) => AsyncError(failure.message, StackTrace.current),
      (order) => AsyncData(order),
    );
  }
}

// ---------------------------------------------------------------------------
// Filters
// ---------------------------------------------------------------------------

@riverpod
class SalesStatusFilter extends _$SalesStatusFilter {
  @override
  String? build() => null;

  void select(String? status) => state = status;
}

@riverpod
class SalesPaymentFilter extends _$SalesPaymentFilter {
  @override
  String? build() => null;

  void select(String? status) => state = status;
}

// ---------------------------------------------------------------------------
// Record Payment
// ---------------------------------------------------------------------------

@riverpod
class RecordPaymentAction extends _$RecordPaymentAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> recordPayment(PaymentCreate payment) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardSalesRepositoryProvider);
    final result = await repo.createPayment(payment);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(salesOrderListProvider);
        return true;
      },
    );
  }
}
