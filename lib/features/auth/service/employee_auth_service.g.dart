// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_auth_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(employeeAuthService)
final employeeAuthServiceProvider = EmployeeAuthServiceProvider._();

final class EmployeeAuthServiceProvider
    extends
        $FunctionalProvider<
          EmployeeAuthService,
          EmployeeAuthService,
          EmployeeAuthService
        >
    with $Provider<EmployeeAuthService> {
  EmployeeAuthServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'employeeAuthServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$employeeAuthServiceHash();

  @$internal
  @override
  $ProviderElement<EmployeeAuthService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EmployeeAuthService create(Ref ref) {
    return employeeAuthService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EmployeeAuthService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EmployeeAuthService>(value),
    );
  }
}

String _$employeeAuthServiceHash() =>
    r'e968fb3da111b9ebb19b4e396fb078439cfd92c8';
