import 'package:flutter/material.dart';

// =====================================================================
// Employee Role Type — strongly typed enum for backend role strings
// =====================================================================

/// All employee roles recognised by the POS.
/// Add new roles here and update [rolePermissions] below.
enum EmployeeRoleType {
  admin,
  manager,
  cashier,
  chef,
  waiter;

  /// Safely convert a backend role string to [EmployeeRoleType].
  /// Returns `null` for unrecognised values.
  static EmployeeRoleType? fromString(String? role) {
    if (role == null || role.isEmpty) return null;
    final normalised = role.trim().toLowerCase();
    return EmployeeRoleType.values.cast<EmployeeRoleType?>().firstWhere(
          (e) => e!.name == normalised,
          orElse: () => null,
        );
  }
}

// =====================================================================
// App Page — every navigable page in the POS shell
// =====================================================================

/// Represents every top-level page available in the POS sidebar.
enum AppPage {
  home(icon: Icons.home_outlined, selectedIcon: Icons.home, label: 'Home'),
  dashboard(icon: Icons.grid_view_outlined, selectedIcon: Icons.grid_view, label: 'Dashboard'),
  orders(icon: Icons.receipt_long_outlined, selectedIcon: Icons.receipt_long, label: 'Orders'),
  kot(icon: Icons.restaurant_menu_outlined, selectedIcon: Icons.restaurant_menu, label: 'Kitchen (KOT)'),
  inventory(icon: Icons.inventory_2_outlined, selectedIcon: Icons.inventory_2, label: 'Inventory'),
  help(icon: Icons.help_outline, selectedIcon: Icons.help, label: 'Help'),
  settings(icon: Icons.settings_outlined, selectedIcon: Icons.settings, label: 'Settings');

  const AppPage({
    required this.icon,
    required this.selectedIcon,
    required this.label,
  });

  final IconData icon;
  final IconData selectedIcon;
  final String label;
}

// =====================================================================
// Role → Page permission matrix
// =====================================================================

/// Central permission map.
/// To grant a new role access to a page, simply add it here.
const Map<EmployeeRoleType, Set<AppPage>> rolePermissions = {
  EmployeeRoleType.admin: {
    AppPage.home,
    AppPage.dashboard,
    AppPage.orders,
    AppPage.kot,
    AppPage.inventory,
    AppPage.help,
    AppPage.settings,
  },
  EmployeeRoleType.manager: {
    AppPage.home,
    AppPage.dashboard,
    AppPage.orders,
    AppPage.kot,
    AppPage.inventory,
    AppPage.help,
    AppPage.settings,
  },
  EmployeeRoleType.cashier: {
    AppPage.home,
    AppPage.orders,
    AppPage.help,
    AppPage.settings,
  },
  EmployeeRoleType.chef: {
    AppPage.orders,
    AppPage.kot,
    AppPage.help,
    AppPage.settings,
  },
  EmployeeRoleType.waiter: {
    AppPage.orders,
    AppPage.kot,
    AppPage.help,
    AppPage.settings,
  },
};

/// The default landing page per role (first page the user sees).
const Map<EmployeeRoleType, AppPage> roleDefaultPage = {
  EmployeeRoleType.admin: AppPage.home,
  EmployeeRoleType.manager: AppPage.home,
  EmployeeRoleType.cashier: AppPage.home,
  EmployeeRoleType.chef: AppPage.kot,
  EmployeeRoleType.waiter: AppPage.orders,
};
