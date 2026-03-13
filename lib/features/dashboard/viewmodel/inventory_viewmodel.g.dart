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

@ProviderFor(CreateInventoryUnitAction)
final createInventoryUnitActionProvider = CreateInventoryUnitActionProvider._();

final class CreateInventoryUnitActionProvider
    extends $NotifierProvider<CreateInventoryUnitAction, AsyncValue<void>> {
  CreateInventoryUnitActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createInventoryUnitActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createInventoryUnitActionHash();

  @$internal
  @override
  CreateInventoryUnitAction create() => CreateInventoryUnitAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$createInventoryUnitActionHash() =>
    r'25170aca0600899b479d7f264be925aa2bb9b584';

abstract class _$CreateInventoryUnitAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(CreateInventoryLocationAction)
final createInventoryLocationActionProvider =
    CreateInventoryLocationActionProvider._();

final class CreateInventoryLocationActionProvider
    extends $NotifierProvider<CreateInventoryLocationAction, AsyncValue<void>> {
  CreateInventoryLocationActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createInventoryLocationActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createInventoryLocationActionHash();

  @$internal
  @override
  CreateInventoryLocationAction create() => CreateInventoryLocationAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$createInventoryLocationActionHash() =>
    r'bc12cad7ce2c47147143199c8a957af88b4d4e71';

abstract class _$CreateInventoryLocationAction
    extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(ToggleItemAvailabilityAction)
final toggleItemAvailabilityActionProvider =
    ToggleItemAvailabilityActionProvider._();

final class ToggleItemAvailabilityActionProvider
    extends $NotifierProvider<ToggleItemAvailabilityAction, AsyncValue<void>> {
  ToggleItemAvailabilityActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toggleItemAvailabilityActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toggleItemAvailabilityActionHash();

  @$internal
  @override
  ToggleItemAvailabilityAction create() => ToggleItemAvailabilityAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$toggleItemAvailabilityActionHash() =>
    r'c8f400413784dc1e4bb03478f8c5743930e50f56';

abstract class _$ToggleItemAvailabilityAction
    extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(recipeDetail)
final recipeDetailProvider = RecipeDetailFamily._();

final class RecipeDetailProvider
    extends $FunctionalProvider<AsyncValue<Recipe>, Recipe, FutureOr<Recipe>>
    with $FutureModifier<Recipe>, $FutureProvider<Recipe> {
  RecipeDetailProvider._({
    required RecipeDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'recipeDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$recipeDetailHash();

  @override
  String toString() {
    return r'recipeDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Recipe> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Recipe> create(Ref ref) {
    final argument = this.argument as String;
    return recipeDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is RecipeDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$recipeDetailHash() => r'c09b8f7c2961416ae79f8919e612347741d711db';

final class RecipeDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Recipe>, String> {
  RecipeDetailFamily._()
    : super(
        retry: null,
        name: r'recipeDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RecipeDetailProvider call(String recipeId) =>
      RecipeDetailProvider._(argument: recipeId, from: this);

  @override
  String toString() => r'recipeDetailProvider';
}

@ProviderFor(CreateRecipeAction)
final createRecipeActionProvider = CreateRecipeActionProvider._();

final class CreateRecipeActionProvider
    extends $NotifierProvider<CreateRecipeAction, AsyncValue<void>> {
  CreateRecipeActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createRecipeActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createRecipeActionHash();

  @$internal
  @override
  CreateRecipeAction create() => CreateRecipeAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$createRecipeActionHash() =>
    r'0701f403f547f47b45f1e56125d3528191042ffd';

abstract class _$CreateRecipeAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(UpdateRecipeAction)
final updateRecipeActionProvider = UpdateRecipeActionProvider._();

final class UpdateRecipeActionProvider
    extends $NotifierProvider<UpdateRecipeAction, AsyncValue<void>> {
  UpdateRecipeActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateRecipeActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateRecipeActionHash();

  @$internal
  @override
  UpdateRecipeAction create() => UpdateRecipeAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$updateRecipeActionHash() =>
    r'f246d279104338984a0991174a9bf08bb11d0c5d';

abstract class _$UpdateRecipeAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(TransferList)
final transferListProvider = TransferListProvider._();

final class TransferListProvider
    extends $AsyncNotifierProvider<TransferList, List<InventoryTransfer>> {
  TransferListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transferListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transferListHash();

  @$internal
  @override
  TransferList create() => TransferList();
}

String _$transferListHash() => r'20c057843df57a294cea224073fda8c15cf72f2e';

abstract class _$TransferList extends $AsyncNotifier<List<InventoryTransfer>> {
  FutureOr<List<InventoryTransfer>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<InventoryTransfer>>,
              List<InventoryTransfer>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<InventoryTransfer>>,
                List<InventoryTransfer>
              >,
              AsyncValue<List<InventoryTransfer>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(CreateTransferAction)
final createTransferActionProvider = CreateTransferActionProvider._();

final class CreateTransferActionProvider
    extends $NotifierProvider<CreateTransferAction, AsyncValue<void>> {
  CreateTransferActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createTransferActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createTransferActionHash();

  @$internal
  @override
  CreateTransferAction create() => CreateTransferAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$createTransferActionHash() =>
    r'2347a5929321475724bc161a723d9b4d23f9a9e4';

abstract class _$CreateTransferAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(UpdateTransferStatusAction)
final updateTransferStatusActionProvider =
    UpdateTransferStatusActionProvider._();

final class UpdateTransferStatusActionProvider
    extends $NotifierProvider<UpdateTransferStatusAction, AsyncValue<void>> {
  UpdateTransferStatusActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateTransferStatusActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateTransferStatusActionHash();

  @$internal
  @override
  UpdateTransferStatusAction create() => UpdateTransferStatusAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$updateTransferStatusActionHash() =>
    r'734df21005015200fabb16dabd79d63c48e933bf';

abstract class _$UpdateTransferStatusAction
    extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(OutOfStockList)
final outOfStockListProvider = OutOfStockListProvider._();

final class OutOfStockListProvider
    extends $AsyncNotifierProvider<OutOfStockList, List<OutOfStockItem>> {
  OutOfStockListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'outOfStockListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$outOfStockListHash();

  @$internal
  @override
  OutOfStockList create() => OutOfStockList();
}

String _$outOfStockListHash() => r'369a21f71f066571b318632b75dff83bd566078c';

abstract class _$OutOfStockList extends $AsyncNotifier<List<OutOfStockItem>> {
  FutureOr<List<OutOfStockItem>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<OutOfStockItem>>, List<OutOfStockItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<OutOfStockItem>>,
                List<OutOfStockItem>
              >,
              AsyncValue<List<OutOfStockItem>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
