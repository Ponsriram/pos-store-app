import 'role_permissions.dart';

/// Centralised permission checks.
///
/// All UI code should go through this service instead of doing
/// ad-hoc role string comparisons.
class PermissionService {
  const PermissionService._();

  /// Whether [role] is allowed to view [page].
  static bool canAccess(EmployeeRoleType? role, AppPage page) {
    if (role == null) return false;
    return rolePermissions[role]?.contains(page) ?? false;
  }

  /// The ordered list of pages the [role] may access.
  /// Preserves the declaration order of [AppPage] values so the
  /// sidebar items remain stable.
  static List<AppPage> allowedPages(EmployeeRoleType? role) {
    if (role == null) return [];
    final allowed = rolePermissions[role] ?? {};
    return AppPage.values.where(allowed.contains).toList();
  }

  /// The first page that should be shown after login for [role].
  static AppPage defaultPage(EmployeeRoleType? role) {
    if (role == null) return AppPage.home;
    return roleDefaultPage[role] ?? AppPage.home;
  }
}
