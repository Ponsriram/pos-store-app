/// Centralized role-based access control for UI pages.
///
/// Defines which pages each employee role can access.
/// Used by the sidebar and home page to filter navigation items.

/// All navigable pages in the POS app.
enum AppPage {
  home('Home', 'home'),
  orders('Orders', 'orders'),
  kot('Kitchen (KOT)', 'kot'),
  dashboard('Dashboard', 'dashboard'),
  help('Help', 'help'),
  settings('Settings', 'settings');

  final String label;
  final String id;
  const AppPage(this.label, this.id);
}

/// Maps each role to the set of pages the role can access.
///
/// Pages not in this map (Help, Settings) are accessible to all roles.
const Map<String, Set<AppPage>> rolePermissions = {
  'cashier': {AppPage.home, AppPage.orders},
  'waiter': {AppPage.orders, AppPage.kot},
  'chef': {AppPage.kot},
  'manager': {
    AppPage.home,
    AppPage.orders,
    AppPage.kot,
    AppPage.dashboard,
  },
};

/// Returns the set of main pages allowed for a given [role].
///
/// Falls back to manager-level access if the role is unknown.
Set<AppPage> getAllowedPages(String role) {
  return rolePermissions[role.toLowerCase()] ??
      rolePermissions['manager']!;
}

/// Checks if a [role] can access a given [page].
bool canAccess(String role, AppPage page) {
  // Help and Settings are always accessible
  if (page == AppPage.help || page == AppPage.settings) return true;
  return getAllowedPages(role).contains(page);
}
