// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SalesOrderList)
final salesOrderListProvider = SalesOrderListProvider._();

final class SalesOrderListProvider
    extends $AsyncNotifierProvider<SalesOrderList, List<Order>> {
  SalesOrderListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'salesOrderListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$salesOrderListHash();

  @$internal
  @override
  SalesOrderList create() => SalesOrderList();
}

String _$salesOrderListHash() => r'917916698069b3abb36682a9406e18bf627068a2';

abstract class _$SalesOrderList extends $AsyncNotifier<List<Order>> {
  FutureOr<List<Order>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Order>>, List<Order>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Order>>, List<Order>>,
              AsyncValue<List<Order>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SalesOrderDetail)
final salesOrderDetailProvider = SalesOrderDetailProvider._();

final class SalesOrderDetailProvider
    extends $AsyncNotifierProvider<SalesOrderDetail, Order?> {
  SalesOrderDetailProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'salesOrderDetailProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$salesOrderDetailHash();

  @$internal
  @override
  SalesOrderDetail create() => SalesOrderDetail();
}

String _$salesOrderDetailHash() => r'87c6146724266d8dc899addc74f9aee8aabf6ed4';

abstract class _$SalesOrderDetail extends $AsyncNotifier<Order?> {
  FutureOr<Order?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Order?>, Order?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Order?>, Order?>,
              AsyncValue<Order?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SalesStatusFilter)
final salesStatusFilterProvider = SalesStatusFilterProvider._();

final class SalesStatusFilterProvider
    extends $NotifierProvider<SalesStatusFilter, String?> {
  SalesStatusFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'salesStatusFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$salesStatusFilterHash();

  @$internal
  @override
  SalesStatusFilter create() => SalesStatusFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$salesStatusFilterHash() => r'2fce5416ef12e0ac54b4f93bedabb49eb02976ce';

abstract class _$SalesStatusFilter extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SalesPaymentFilter)
final salesPaymentFilterProvider = SalesPaymentFilterProvider._();

final class SalesPaymentFilterProvider
    extends $NotifierProvider<SalesPaymentFilter, String?> {
  SalesPaymentFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'salesPaymentFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$salesPaymentFilterHash();

  @$internal
  @override
  SalesPaymentFilter create() => SalesPaymentFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$salesPaymentFilterHash() =>
    r'263e76881e1aec3cefcf2aae40a566313510d234';

abstract class _$SalesPaymentFilter extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(RecordPaymentAction)
final recordPaymentActionProvider = RecordPaymentActionProvider._();

final class RecordPaymentActionProvider
    extends $NotifierProvider<RecordPaymentAction, AsyncValue<void>> {
  RecordPaymentActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'recordPaymentActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$recordPaymentActionHash();

  @$internal
  @override
  RecordPaymentAction create() => RecordPaymentAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$recordPaymentActionHash() =>
    r'e1c449f3530ed768f97051886ba11d746ed84683';

abstract class _$RecordPaymentAction extends $Notifier<AsyncValue<void>> {
  AsyncValue<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, AsyncValue<void>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, AsyncValue<void>>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
