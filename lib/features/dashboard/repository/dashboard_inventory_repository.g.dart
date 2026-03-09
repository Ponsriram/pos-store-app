// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_inventory_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dashboardInventoryRepository)
final dashboardInventoryRepositoryProvider =
    DashboardInventoryRepositoryProvider._();

final class DashboardInventoryRepositoryProvider
    extends
        $FunctionalProvider<
          DashboardInventoryRepository,
          DashboardInventoryRepository,
          DashboardInventoryRepository
        >
    with $Provider<DashboardInventoryRepository> {
  DashboardInventoryRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardInventoryRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardInventoryRepositoryHash();

  @$internal
  @override
  $ProviderElement<DashboardInventoryRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DashboardInventoryRepository create(Ref ref) {
    return dashboardInventoryRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardInventoryRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardInventoryRepository>(value),
    );
  }
}

String _$dashboardInventoryRepositoryHash() =>
    r'fe50257de00e31dc495ce09b581f956f017935bd';
