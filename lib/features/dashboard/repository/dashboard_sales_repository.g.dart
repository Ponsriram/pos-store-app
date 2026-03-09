// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_sales_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dashboardSalesRepository)
final dashboardSalesRepositoryProvider = DashboardSalesRepositoryProvider._();

final class DashboardSalesRepositoryProvider
    extends
        $FunctionalProvider<
          DashboardSalesRepository,
          DashboardSalesRepository,
          DashboardSalesRepository
        >
    with $Provider<DashboardSalesRepository> {
  DashboardSalesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardSalesRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardSalesRepositoryHash();

  @$internal
  @override
  $ProviderElement<DashboardSalesRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DashboardSalesRepository create(Ref ref) {
    return dashboardSalesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardSalesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardSalesRepository>(value),
    );
  }
}

String _$dashboardSalesRepositoryHash() =>
    r'c6971653e20d5ccd3231a757f5e78128ca2c3d96';
