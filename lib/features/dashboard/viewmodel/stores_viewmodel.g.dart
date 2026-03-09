// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DashboardStoreList)
final dashboardStoreListProvider = DashboardStoreListProvider._();

final class DashboardStoreListProvider
    extends $AsyncNotifierProvider<DashboardStoreList, List<Store>> {
  DashboardStoreListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardStoreListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardStoreListHash();

  @$internal
  @override
  DashboardStoreList create() => DashboardStoreList();
}

String _$dashboardStoreListHash() =>
    r'5599dd0854df2bfd5327d744bd159e920bce58c5';

abstract class _$DashboardStoreList extends $AsyncNotifier<List<Store>> {
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

@ProviderFor(CreateStoreAction)
final createStoreActionProvider = CreateStoreActionProvider._();

final class CreateStoreActionProvider
    extends $NotifierProvider<CreateStoreAction, AsyncValue<void>> {
  CreateStoreActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createStoreActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createStoreActionHash();

  @$internal
  @override
  CreateStoreAction create() => CreateStoreAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$createStoreActionHash() => r'd8367a04b68547950679eba88c9a5d2b644f2ac1';

abstract class _$CreateStoreAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(CreateTerminalAction)
final createTerminalActionProvider = CreateTerminalActionProvider._();

final class CreateTerminalActionProvider
    extends $NotifierProvider<CreateTerminalAction, AsyncValue<void>> {
  CreateTerminalActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createTerminalActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createTerminalActionHash();

  @$internal
  @override
  CreateTerminalAction create() => CreateTerminalAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$createTerminalActionHash() =>
    r'7f201bb30fc42624cf2b2da9415e4c0660927d78';

abstract class _$CreateTerminalAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(CreateTableAction)
final createTableActionProvider = CreateTableActionProvider._();

final class CreateTableActionProvider
    extends $NotifierProvider<CreateTableAction, AsyncValue<void>> {
  CreateTableActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createTableActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createTableActionHash();

  @$internal
  @override
  CreateTableAction create() => CreateTableAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$createTableActionHash() => r'eaae8debf58cd4a0f5f7c36d02d11a0fbf606428';

abstract class _$CreateTableAction extends $Notifier<AsyncValue<void>> {
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
