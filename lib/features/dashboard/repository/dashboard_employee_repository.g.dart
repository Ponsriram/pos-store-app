// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_employee_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dashboardEmployeeRepository)
final dashboardEmployeeRepositoryProvider =
    DashboardEmployeeRepositoryProvider._();

final class DashboardEmployeeRepositoryProvider
    extends
        $FunctionalProvider<
          DashboardEmployeeRepository,
          DashboardEmployeeRepository,
          DashboardEmployeeRepository
        >
    with $Provider<DashboardEmployeeRepository> {
  DashboardEmployeeRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardEmployeeRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardEmployeeRepositoryHash();

  @$internal
  @override
  $ProviderElement<DashboardEmployeeRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DashboardEmployeeRepository create(Ref ref) {
    return dashboardEmployeeRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardEmployeeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardEmployeeRepository>(value),
    );
  }
}

String _$dashboardEmployeeRepositoryHash() =>
    r'5d897b2b21774eb338ce68ee27193061c50ce675';
