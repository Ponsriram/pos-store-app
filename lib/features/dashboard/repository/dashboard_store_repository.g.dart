// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_store_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dashboardStoreRepository)
final dashboardStoreRepositoryProvider = DashboardStoreRepositoryProvider._();

final class DashboardStoreRepositoryProvider
    extends
        $FunctionalProvider<
          DashboardStoreRepository,
          DashboardStoreRepository,
          DashboardStoreRepository
        >
    with $Provider<DashboardStoreRepository> {
  DashboardStoreRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardStoreRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardStoreRepositoryHash();

  @$internal
  @override
  $ProviderElement<DashboardStoreRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DashboardStoreRepository create(Ref ref) {
    return dashboardStoreRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardStoreRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardStoreRepository>(value),
    );
  }
}

String _$dashboardStoreRepositoryHash() =>
    r'16ff9b44eb51d9434ae78c7ef442cfba7e8e6eba';
