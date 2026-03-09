// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_product_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dashboardProductRepository)
final dashboardProductRepositoryProvider =
    DashboardProductRepositoryProvider._();

final class DashboardProductRepositoryProvider
    extends
        $FunctionalProvider<
          DashboardProductRepository,
          DashboardProductRepository,
          DashboardProductRepository
        >
    with $Provider<DashboardProductRepository> {
  DashboardProductRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardProductRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardProductRepositoryHash();

  @$internal
  @override
  $ProviderElement<DashboardProductRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DashboardProductRepository create(Ref ref) {
    return dashboardProductRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardProductRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardProductRepository>(value),
    );
  }
}

String _$dashboardProductRepositoryHash() =>
    r'df4b5af43f701c3d8836f9917e0ac04166af56af';
