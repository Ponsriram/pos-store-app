// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(InventoryItemList)
final inventoryItemListProvider = InventoryItemListProvider._();

final class InventoryItemListProvider
    extends $AsyncNotifierProvider<InventoryItemList, List<InventoryItem>> {
  InventoryItemListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'inventoryItemListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$inventoryItemListHash();

  @$internal
  @override
  InventoryItemList create() => InventoryItemList();
}

String _$inventoryItemListHash() => r'245d5390c74f3c6cd8ed8ca078e670f6f5c1d637';

abstract class _$InventoryItemList extends $AsyncNotifier<List<InventoryItem>> {
  FutureOr<List<InventoryItem>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<InventoryItem>>, List<InventoryItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<InventoryItem>>, List<InventoryItem>>,
              AsyncValue<List<InventoryItem>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(StockLevelList)
final stockLevelListProvider = StockLevelListProvider._();

final class StockLevelListProvider
    extends $AsyncNotifierProvider<StockLevelList, List<StockLevel>> {
  StockLevelListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'stockLevelListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$stockLevelListHash();

  @$internal
  @override
  StockLevelList create() => StockLevelList();
}

String _$stockLevelListHash() => r'7b86745e32298c66729e33feb1b6c9533faf6aaa';

abstract class _$StockLevelList extends $AsyncNotifier<List<StockLevel>> {
  FutureOr<List<StockLevel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<StockLevel>>, List<StockLevel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<StockLevel>>, List<StockLevel>>,
              AsyncValue<List<StockLevel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(InventoryUnitList)
final inventoryUnitListProvider = InventoryUnitListProvider._();

final class InventoryUnitListProvider
    extends $AsyncNotifierProvider<InventoryUnitList, List<InventoryUnit>> {
  InventoryUnitListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'inventoryUnitListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$inventoryUnitListHash();

  @$internal
  @override
  InventoryUnitList create() => InventoryUnitList();
}

String _$inventoryUnitListHash() => r'a5394ed5f93099b4605e4cb52ad9b5a63b28b43e';

abstract class _$InventoryUnitList extends $AsyncNotifier<List<InventoryUnit>> {
  FutureOr<List<InventoryUnit>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<InventoryUnit>>, List<InventoryUnit>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<InventoryUnit>>, List<InventoryUnit>>,
              AsyncValue<List<InventoryUnit>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(InventoryLocationList)
final inventoryLocationListProvider = InventoryLocationListProvider._();

final class InventoryLocationListProvider
    extends
        $AsyncNotifierProvider<InventoryLocationList, List<InventoryLocation>> {
  InventoryLocationListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'inventoryLocationListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$inventoryLocationListHash();

  @$internal
  @override
  InventoryLocationList create() => InventoryLocationList();
}

String _$inventoryLocationListHash() =>
    r'22643773c6c2cb7a46a73c1e279e49b251315717';

abstract class _$InventoryLocationList
    extends $AsyncNotifier<List<InventoryLocation>> {
  FutureOr<List<InventoryLocation>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<InventoryLocation>>,
              List<InventoryLocation>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<InventoryLocation>>,
                List<InventoryLocation>
              >,
              AsyncValue<List<InventoryLocation>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(CreateInventoryItemAction)
final createInventoryItemActionProvider = CreateInventoryItemActionProvider._();

final class CreateInventoryItemActionProvider
    extends $NotifierProvider<CreateInventoryItemAction, AsyncValue<void>> {
  CreateInventoryItemActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createInventoryItemActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createInventoryItemActionHash();

  @$internal
  @override
  CreateInventoryItemAction create() => CreateInventoryItemAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$createInventoryItemActionHash() =>
    r'bc6171d54b247472430c1303b94fdde467a8db04';

abstract class _$CreateInventoryItemAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(UpdateInventoryItemAction)
final updateInventoryItemActionProvider = UpdateInventoryItemActionProvider._();

final class UpdateInventoryItemActionProvider
    extends $NotifierProvider<UpdateInventoryItemAction, AsyncValue<void>> {
  UpdateInventoryItemActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateInventoryItemActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateInventoryItemActionHash();

  @$internal
  @override
  UpdateInventoryItemAction create() => UpdateInventoryItemAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$updateInventoryItemActionHash() =>
    r'c6d6f36c8398ef8a539b68eea7704e5aed31213e';

abstract class _$UpdateInventoryItemAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(AdjustStockAction)
final adjustStockActionProvider = AdjustStockActionProvider._();

final class AdjustStockActionProvider
    extends $NotifierProvider<AdjustStockAction, AsyncValue<void>> {
  AdjustStockActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adjustStockActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adjustStockActionHash();

  @$internal
  @override
  AdjustStockAction create() => AdjustStockAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$adjustStockActionHash() => r'335fb2947aa23eb36506f6b8f44148f478d44aab';

abstract class _$AdjustStockAction extends $Notifier<AsyncValue<void>> {
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
