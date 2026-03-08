// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Holds the currently selected store.

@ProviderFor(SelectedStore)
final selectedStoreProvider = SelectedStoreProvider._();

/// Holds the currently selected store.
final class SelectedStoreProvider
    extends $NotifierProvider<SelectedStore, Store?> {
  /// Holds the currently selected store.
  SelectedStoreProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedStoreProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedStoreHash();

  @$internal
  @override
  SelectedStore create() => SelectedStore();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Store? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Store?>(value),
    );
  }
}

String _$selectedStoreHash() => r'65bb8fb6c64b5b2fda1227068676bc86a6ca8ec2';

/// Holds the currently selected store.

abstract class _$SelectedStore extends $Notifier<Store?> {
  Store? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Store?, Store?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Store?, Store?>,
              Store?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

/// Fetches all stores for the authenticated user.

@ProviderFor(StoreList)
final storeListProvider = StoreListProvider._();

/// Fetches all stores for the authenticated user.
final class StoreListProvider
    extends $AsyncNotifierProvider<StoreList, List<Store>> {
  /// Fetches all stores for the authenticated user.
  StoreListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'storeListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$storeListHash();

  @$internal
  @override
  StoreList create() => StoreList();
}

String _$storeListHash() => r'2f0658c2bda1a6015b6c834fbd1f86558168d0e3';

/// Fetches all stores for the authenticated user.

abstract class _$StoreList extends $AsyncNotifier<List<Store>> {
  FutureOr<List<Store>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Store>>, List<Store>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Store>>, List<Store>>,
              AsyncValue<List<Store>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
