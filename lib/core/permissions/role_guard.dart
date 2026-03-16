import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/auth/provider/auth_provider.dart';
import 'permission_service.dart';
import 'role_permissions.dart';

/// Wraps a child widget with a permission check.
///
/// If the current employee role does not have access to [requiredPage],
/// an [AccessDeniedScreen] is shown instead of [child].
///
/// ```dart
/// RoleGuard(
///   requiredPage: AppPage.inventory,
///   child: const InventoryPage(),
/// )
/// ```
class RoleGuard extends ConsumerWidget {
  final AppPage requiredPage;
  final Widget child;

  const RoleGuard({
    super.key,
    required this.requiredPage,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roleStr = ref.watch(employeeRoleProvider);
    final role = EmployeeRoleType.fromString(roleStr);

    if (PermissionService.canAccess(role, requiredPage)) {
      return child;
    }

    return const AccessDeniedScreen();
  }
}

/// Fullscreen fallback shown when a user does not have permission.
class AccessDeniedScreen extends StatelessWidget {
  const AccessDeniedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.lock_outline, size: 64, color: colorScheme.error),
          const SizedBox(height: 16),
          Text(
            'Access Denied',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'You do not have permission to view this page.',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: colorScheme.onSurfaceVariant),
          ),
        ],
      ),
    );
  }
}
