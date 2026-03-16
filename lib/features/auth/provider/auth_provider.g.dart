// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Determines the initial screen based on persisted auth state.
///
/// - No admin token → [AppBootstrapState.login]
/// - Token exists, no selected store → [AppBootstrapState.storeSelection]
/// - Store selected, no terminal → [AppBootstrapState.terminalSetup]
/// - All present → [AppBootstrapState.home]

@ProviderFor(AppBootstrap)
final appBootstrapProvider = AppBootstrapProvider._();

/// Determines the initial screen based on persisted auth state.
///
/// - No admin token → [AppBootstrapState.login]
/// - Token exists, no selected store → [AppBootstrapState.storeSelection]
/// - Store selected, no terminal → [AppBootstrapState.terminalSetup]
/// - All present → [AppBootstrapState.home]
final class AppBootstrapProvider
    extends $AsyncNotifierProvider<AppBootstrap, AppBootstrapState> {
  /// Determines the initial screen based on persisted auth state.
  ///
  /// - No admin token → [AppBootstrapState.login]
  /// - Token exists, no selected store → [AppBootstrapState.storeSelection]
  /// - Store selected, no terminal → [AppBootstrapState.terminalSetup]
  /// - All present → [AppBootstrapState.home]
  AppBootstrapProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appBootstrapProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appBootstrapHash();

  @$internal
  @override
  AppBootstrap create() => AppBootstrap();
}

String _$appBootstrapHash() => r'c8b88c3923fd5980e82182894b2e47e067a90501';

/// Determines the initial screen based on persisted auth state.
///
/// - No admin token → [AppBootstrapState.login]
/// - Token exists, no selected store → [AppBootstrapState.storeSelection]
/// - Store selected, no terminal → [AppBootstrapState.terminalSetup]
/// - All present → [AppBootstrapState.home]

abstract class _$AppBootstrap extends $AsyncNotifier<AppBootstrapState> {
  FutureOr<AppBootstrapState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<AppBootstrapState>, AppBootstrapState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AppBootstrapState>, AppBootstrapState>,
              AsyncValue<AppBootstrapState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

/// Provider that holds the selected store ID and persists it to local storage.

@ProviderFor(SelectedStoreId)
final selectedStoreIdProvider = SelectedStoreIdProvider._();

/// Provider that holds the selected store ID and persists it to local storage.
final class SelectedStoreIdProvider
    extends $NotifierProvider<SelectedStoreId, String?> {
  /// Provider that holds the selected store ID and persists it to local storage.
  SelectedStoreIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedStoreIdProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedStoreIdHash();

  @$internal
  @override
  SelectedStoreId create() => SelectedStoreId();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$selectedStoreIdHash() => r'646ccc8fd826d4c63df321a2386883a0158fb38c';

/// Provider that holds the selected store ID and persists it to local storage.

abstract class _$SelectedStoreId extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

/// Provider that holds the registered terminal ID and persists it to
/// local storage. Terminal registration is a one-time operation per device.

@ProviderFor(TerminalId)
final terminalIdProvider = TerminalIdProvider._();

/// Provider that holds the registered terminal ID and persists it to
/// local storage. Terminal registration is a one-time operation per device.
final class TerminalIdProvider extends $NotifierProvider<TerminalId, String?> {
  /// Provider that holds the registered terminal ID and persists it to
  /// local storage. Terminal registration is a one-time operation per device.
  TerminalIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'terminalIdProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$terminalIdHash();

  @$internal
  @override
  TerminalId create() => TerminalId();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$terminalIdHash() => r'a35e60a387aa80e9f964b1c47061e6c2af45feef';

/// Provider that holds the registered terminal ID and persists it to
/// local storage. Terminal registration is a one-time operation per device.

abstract class _$TerminalId extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(EmployeeRole)
final employeeRoleProvider = EmployeeRoleProvider._();

final class EmployeeRoleProvider
    extends $NotifierProvider<EmployeeRole, String?> {
  EmployeeRoleProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'employeeRoleProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$employeeRoleHash();

  @$internal
  @override
  EmployeeRole create() => EmployeeRole();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$employeeRoleHash() => r'72c0af823431824db41d23ccd7ae1cf6a259d900';

abstract class _$EmployeeRole extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
