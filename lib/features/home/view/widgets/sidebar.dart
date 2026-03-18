import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/database/app_database.dart';
import '../../../../core/provider/theme_provider.dart';
import '../../../../core/rbac/role_permissions.dart';
import '../../../../init_dependencies.dart';
import '../../../auth/view/screen/login_page.dart';
import '../../../auth/viewmodel/auth_viewmodel.dart';

class AppSidebar extends ConsumerStatefulWidget {
  final AppPage selectedPage;
  final ValueChanged<AppPage?> onItemSelected;

  const AppSidebar({
    super.key,
    required this.selectedPage,
    required this.onItemSelected,
  });

  @override
  ConsumerState<AppSidebar> createState() => _AppSidebarState();
}

class _AppSidebarState extends ConsumerState<AppSidebar> {
  User? _currentUser;
  List<AppPage> _allowedPages = [];

  @override
  void initState() {
    super.initState();
    _loadUser();
  }

  Future<void> _loadUser() async {
    final db = serviceLocator<AppDatabase>();
    final user = await db.getLoggedInUser();
    if (mounted) {
      setState(() {
        _currentUser = user;
        if (user != null) {
          // Filter all enum values based on role permissions
          _allowedPages =
              AppPage.values.where((p) => canAccess(user.role, p)).toList();
        }
      });
    }
  }

  IconData _getIconForPage(AppPage page) {
    switch (page) {
      case AppPage.home:
        return Icons.home_outlined;
      case AppPage.dashboard:
        return Icons.grid_view_outlined;
      case AppPage.orders:
        return Icons.receipt_long_outlined;
      case AppPage.kot:
        return Icons.restaurant_menu_outlined;
      case AppPage.help:
        return Icons.help_outline;
      case AppPage.settings:
        return Icons.settings_outlined;
    }
  }

  IconData _getSelectedIconForPage(AppPage page) {
    switch (page) {
      case AppPage.home:
        return Icons.home;
      case AppPage.dashboard:
        return Icons.grid_view;
      case AppPage.orders:
        return Icons.receipt_long;
      case AppPage.kot:
        return Icons.restaurant_menu;
      case AppPage.help:
        return Icons.help;
      case AppPage.settings:
        return Icons.settings;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = ref.watch(isDarkModeProvider);

    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: colorScheme.surface,
        border: Border(
          right: BorderSide(color: colorScheme.outlineVariant, width: 0.5),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 16),
          // Logo & User Initial
          Tooltip(
            message: _currentUser != null
                ? '${_currentUser!.name}\n${_currentUser!.role.toUpperCase()}'
                : 'Loading...',
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  _currentUser?.name.isNotEmpty == true
                      ? _currentUser!.name.substring(0, 1).toUpperCase()
                      : 'U',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Dynamic Nav Items based on Role
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: _allowedPages.length,
              itemBuilder: (context, index) {
                final page = _allowedPages[index];
                // Put a spacer before Settings/Help if they are at the end
                final isBottomSection =
                    page == AppPage.help || page == AppPage.settings;
                final previousIsMain =
                    index > 0 &&
                    _allowedPages[index - 1] != AppPage.help &&
                    _allowedPages[index - 1] != AppPage.settings;

                return Column(
                  children: [
                    if (isBottomSection && previousIsMain) ...[
                      const SizedBox(height: 16),
                      const Divider(indent: 16, endIndent: 16),
                      const SizedBox(height: 8),
                    ],
                    _SidebarItem(
                      icon: _getIconForPage(page),
                      selectedIcon: _getSelectedIconForPage(page),
                      isSelected: page == widget.selectedPage,
                      onTap: () => widget.onItemSelected(page),
                      tooltip: page.label,
                    ),
                  ],
                );
              },
            ),
          ),

          // Bottom actions
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
            onTap: () {
              // Trigger a refresh (null means refresh in our updated logic)
              widget.onItemSelected(null);
            },
          ),
          const Divider(indent: 16, endIndent: 16),
          // Lock Terminal
          _SidebarActionItem(
            icon: Icons.lock_outline,
            tooltip: 'Lock Terminal',
            onTap: () async {
              final confirmed = await showDialog<bool>(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text('Lock Terminal'),
                  content: const Text(
                    'Are you sure you want to lock this terminal? You will need your PIN to unlock it.',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(ctx).pop(false),
                      child: const Text('Cancel'),
                    ),
                    FilledButton(
                      onPressed: () => Navigator.of(ctx).pop(true),
                      child: const Text('Lock'),
                    ),
                  ],
                ),
              );
              if (confirmed == true) {
                await ref.read(authViewModelProvider.notifier).lockTerminal();
                if (context.mounted) {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => const LoginPage()),
                    (_) => false,
                  );
                }
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
  final bool isSelected;
  final VoidCallback onTap;
  final String tooltip;

  const _SidebarItem({
    required this.icon,
    required this.selectedIcon,
    required this.isSelected,
    required this.onTap,
    required this.tooltip,
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
          child: Container(
            width: 52,
            height: 52,
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
              size: 26,
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
            width: 52,
            height: 52,
            child: Icon(icon, color: colorScheme.onSurfaceVariant, size: 26),
          ),
        ),
      ),
    );
  }
}
