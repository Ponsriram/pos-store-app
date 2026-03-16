import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/permissions/permission_service.dart';
import '../../../../core/permissions/role_permissions.dart';
import '../../../../core/provider/theme_provider.dart';
import '../../../auth/provider/auth_provider.dart';
import '../../../auth/viewmodel/auth_viewmodel.dart';

class AppSidebar extends ConsumerWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;
  final VoidCallback onLockPos;

  const AppSidebar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
    required this.onLockPos,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = ref.watch(isDarkModeProvider);

    final roleStr = ref.watch(employeeRoleProvider);
    final role = EmployeeRoleType.fromString(roleStr);
    final pages = PermissionService.allowedPages(role);

    // Split into main pages and utility pages
    final mainPages = pages
        .where((p) => p != AppPage.help && p != AppPage.settings)
        .toList();
    final utilPages = pages
        .where((p) => p == AppPage.help || p == AppPage.settings)
        .toList();

    return Container(
      width: 72,
      decoration: BoxDecoration(
        color: colorScheme.surface,
        border: Border(
          right: BorderSide(color: colorScheme.outlineVariant, width: 0.5),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 16),
          // Logo
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: colorScheme.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.restaurant,
              color: colorScheme.onPrimary,
              size: 24,
            ),
          ),
          const SizedBox(height: 24),

          // ── Main nav items (driven by role permissions) ──────────
          for (int i = 0; i < mainPages.length; i++)
            _SidebarItem(
              icon: mainPages[i].icon,
              selectedIcon: mainPages[i].selectedIcon,
              index: i,
              selectedIndex: selectedIndex,
              onTap: () => onItemSelected(i),
              tooltip: mainPages[i].label,
            ),

          const Spacer(),

          // ── Actions ─────────────────────────────────────────────
          _SidebarActionItem(
            icon: isDark ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
            tooltip: isDark ? 'Light Mode' : 'Dark Mode',
            onTap: () {
              ref.read(isDarkModeProvider.notifier).toggle();
            },
          ),
          _SidebarActionItem(
            icon: Icons.refresh,
            tooltip: 'Refresh',
            onTap: () => onItemSelected(-1),
          ),

          const Divider(indent: 16, endIndent: 16),

          // ── Utility pages (Help, Settings) ──────────────────────
          for (int i = 0; i < utilPages.length; i++)
            _SidebarItem(
              icon: utilPages[i].icon,
              selectedIcon: utilPages[i].selectedIcon,
              index: mainPages.length + i,
              selectedIndex: selectedIndex,
              onTap: () => onItemSelected(mainPages.length + i),
              tooltip: utilPages[i].label,
            ),

          _SidebarActionItem(
            icon: Icons.lock_outline,
            tooltip: 'Lock POS',
            onTap: onLockPos,
          ),
          _SidebarActionItem(
            icon: Icons.logout,
            tooltip: 'Logout',
            onTap: () async {
              final confirmed = await showDialog<bool>(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text('Logout'),
                  content: const Text('Are you sure you want to logout?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(ctx).pop(false),
                      child: const Text('Cancel'),
                    ),
                    FilledButton(
                      onPressed: () => Navigator.of(ctx).pop(true),
                      child: const Text('Logout'),
                    ),
                  ],
                ),
              );
              if (confirmed == true) {
                await ref.read(authViewModelProvider.notifier).logout();
              }
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _SidebarItem extends StatelessWidget {
  final IconData icon;
  final IconData selectedIcon;
  final int index;
  final int selectedIndex;
  final VoidCallback onTap;
  final String tooltip;

  const _SidebarItem({
    required this.icon,
    required this.selectedIcon,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
    required this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = index == selectedIndex;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Tooltip(
        message: tooltip,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: isSelected
                  ? colorScheme.primaryContainer
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              isSelected ? selectedIcon : icon,
              color: isSelected
                  ? colorScheme.onPrimaryContainer
                  : colorScheme.onSurfaceVariant,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}

class _SidebarActionItem extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;

  const _SidebarActionItem({
    required this.icon,
    required this.tooltip,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Tooltip(
        message: tooltip,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            width: 48,
            height: 48,
            child: Icon(icon, color: colorScheme.onSurfaceVariant, size: 24),
          ),
        ),
      ),
    );
  }
}
