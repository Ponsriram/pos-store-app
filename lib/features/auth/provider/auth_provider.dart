import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/app_database.dart';
import '../../../core/storage/local_storage.dart';
import '../../../init_dependencies.dart';

part 'auth_provider.g.dart';

// =====================================================================
// App Bootstrap — determines which screen to show at startup
// =====================================================================

enum AppBootstrapState { login, storeSelection, terminalSetup, employeeLogin, home }

/// Determines the initial screen based on persisted auth state.
///
/// - No admin token → [AppBootstrapState.login]
/// - Token exists, no selected store → [AppBootstrapState.storeSelection]
/// - Store selected, no terminal → [AppBootstrapState.terminalSetup]
/// - All present → [AppBootstrapState.home]
@Riverpod(keepAlive: true)
class AppBootstrap extends _$AppBootstrap {
  @override
  Future<AppBootstrapState> build() async {
    final localStorage = serviceLocator<LocalStorage>();

    final token = await localStorage.getAdminToken();
    if (token == null || token.isEmpty) {
      return AppBootstrapState.login;
    }

    final storeId = await localStorage.getSelectedStoreId();
    if (storeId == null || storeId.isEmpty) {
      return AppBootstrapState.storeSelection;
    }

    final terminalId = await localStorage.getTerminalId();
    if (terminalId == null || terminalId.isEmpty) {
      return AppBootstrapState.terminalSetup;
    }

    final employeeToken = await localStorage.getEmployeeToken();
    if (employeeToken == null || employeeToken.isEmpty) {
      return AppBootstrapState.employeeLogin;
    }

    return AppBootstrapState.home;
  }

  /// Re-evaluate bootstrap state (call after login, store selection,
  /// terminal registration, or logout).
  Future<void> reevaluate() async {
    ref.invalidateSelf();
  }
}

// =====================================================================
// Selected Store ID — persisted to local storage
// =====================================================================

/// Provider that holds the selected store ID and persists it to local storage.
@Riverpod(keepAlive: true)
class SelectedStoreId extends _$SelectedStoreId {
  @override
  String? build() {
    // Initialize by reading from DB
    _initFromDb();
    return null;
  }

  Future<void> _initFromDb() async {
    final localStorage = serviceLocator<LocalStorage>();
    final storeId = await localStorage.getSelectedStoreId();
    if (storeId != null && storeId.isNotEmpty && ref.mounted) {
      state = storeId;
    }
  }

  /// Select a store: persists to local storage and updates state.
  Future<void> select(String storeId) async {
    final localStorage = serviceLocator<LocalStorage>();
    await localStorage.setSelectedStoreId(storeId);
    state = storeId;
  }

  /// Clear selected store: removes from local storage and resets state.
  Future<void> clear() async {
    final localStorage = serviceLocator<LocalStorage>();
    await localStorage.clearSelectedStoreId();
    state = null;
  }
}

// =====================================================================
// Terminal ID — persisted to local storage
// =====================================================================

/// Provider that holds the registered terminal ID and persists it to
/// local storage. Terminal registration is a one-time operation per device.
@Riverpod(keepAlive: true)
class TerminalId extends _$TerminalId {
  @override
  String? build() {
    _initFromDb();
    return null;
  }

  Future<void> _initFromDb() async {
    final localStorage = serviceLocator<LocalStorage>();
    final terminalId = await localStorage.getTerminalId();
    if (terminalId != null && terminalId.isNotEmpty && ref.mounted) {
      state = terminalId;
    }
  }

  /// Set terminal ID after registration.
  Future<void> set(String terminalId) async {
    final localStorage = serviceLocator<LocalStorage>();
    // Token is already saved by TerminalService.registerTerminal()
    state = terminalId;
  }

  /// Clear terminal registration.
  Future<void> clear() async {
    final localStorage = serviceLocator<LocalStorage>();
    await localStorage.clearTerminal();
    state = null;
  }
}

// =====================================================================
// Employee Role
// =====================================================================

@Riverpod(keepAlive: true)
class EmployeeRole extends _$EmployeeRole {
  @override
  String? build() {
    _initFromDb();
    return null;
  }

  Future<void> _initFromDb() async {
    final localStorage = serviceLocator<LocalStorage>();
    final role = await localStorage.getEmployeeRole();
    if (role != null && role.isNotEmpty && ref.mounted) {
      state = role;
    }
  }

  Future<void> setRole(String role) async {
    state = role;
  }

  Future<void> clear() async {
    state = null;
  }
}
