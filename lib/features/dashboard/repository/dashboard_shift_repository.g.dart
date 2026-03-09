// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_shift_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dashboardShiftRepository)
final dashboardShiftRepositoryProvider = DashboardShiftRepositoryProvider._();

final class DashboardShiftRepositoryProvider
    extends
        $FunctionalProvider<
          DashboardShiftRepository,
          DashboardShiftRepository,
          DashboardShiftRepository
        >
    with $Provider<DashboardShiftRepository> {
  DashboardShiftRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardShiftRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardShiftRepositoryHash();

  @$internal
  @override
  $ProviderElement<DashboardShiftRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DashboardShiftRepository create(Ref ref) {
    return dashboardShiftRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardShiftRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardShiftRepository>(value),
    );
  }
}

String _$dashboardShiftRepositoryHash() =>
    r'6527ed8de3cb0bb5510d37c6290f2e19510e28d1';
