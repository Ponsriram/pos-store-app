import '../database/app_database.dart';

/// Thin wrapper around [AppDatabase] for local persistence of
/// auth tokens, selected-store state, and terminal registration.
class LocalStorage {
  final AppDatabase _db;

  LocalStorage(this._db);

  // ── Admin Token ──────────────────────────────────────────────────────

  /// Returns the current admin Bearer token, or `null` if not logged in.
  Future<String?> getAdminToken() => _db.getLoggedInUserToken();

  // ── Selected Store ───────────────────────────────────────────────────

  /// Returns the persisted store ID, or `null` if none selected.
  Future<String?> getSelectedStoreId() => _db.getSelectedStoreId();

  /// Persists the selected store ID.
  Future<void> setSelectedStoreId(String id) => _db.setSelectedStoreId(id);

  /// Clears the selected store ID.
  Future<void> clearSelectedStoreId() => _db.clearSelectedStoreId();

  // ── Terminal ──────────────────────────────────────────────────────────

  /// Returns the persisted terminal ID, or `null` if not registered.
  Future<String?> getTerminalId() => _db.getTerminalId();

  /// Returns the persisted terminal token, or `null` if not registered.
  Future<String?> getTerminalToken() => _db.getTerminalToken();

  /// Persists terminal registration data.
  Future<void> setTerminal(String terminalId, String terminalToken) =>
      _db.setTerminal(terminalId, terminalToken);

  /// Clears terminal registration data.
  Future<void> clearTerminal() => _db.clearTerminal();

  // ── Employee ──────────────────────────────────────────────────────────

  /// Returns the persisted employee token, or `null` if not logged in.
  Future<String?> getEmployeeToken() => _db.getEmployeeToken();

  /// Returns the persisted employee ID, or `null` if not logged in.
  Future<String?> getEmployeeId() => _db.getEmployeeId();

  /// Returns the persisted employee role, or `null` if not logged in.
  Future<String?> getEmployeeRole() => _db.getEmployeeRole();

  /// Persists employee session data.
  Future<void> setEmployee(String employeeId, String employeeToken, String employeeName, String employeeRole) =>
      _db.setEmployee(employeeId, employeeToken, employeeName, employeeRole);

  /// Clears employee session data.
  Future<void> clearEmployee() => _db.clearEmployee();

  // ── Clear All ────────────────────────────────────────────────────────

  /// Wipes all local data (used on full logout / 401).
  Future<void> clearAll() => _db.clearAllData();
}
