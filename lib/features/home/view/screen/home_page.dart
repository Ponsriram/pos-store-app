import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/permissions/permission_service.dart';
import '../../../../core/permissions/role_permissions.dart';
import '../../viewmodel/home_viewmodel.dart';
import '../../viewmodel/store_viewmodel.dart';
import '../../../dashboard/view/screen/dashboard_page.dart';
import '../../../dashboard/view/screen/inventory_page.dart';
import '../../../help/view/screen/help_page.dart';
import '../../../kot/view/screen/kot_page.dart';
import '../../../orders/view/screen/orders_page.dart';
import '../../../settings/view/screen/settings_page.dart';
import '../widgets/order_line_section.dart';
import '../widgets/order_summary_panel.dart';
import '../widgets/sidebar.dart';
import '../../../auth/view/screen/lock_screen.dart';
import '../../../auth/provider/auth_provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _selectedIndex = 0;
  bool _isLocked = false;
  bool _initializedRole = false;

  void _onSidebarItemSelected(int index) {
    if (index == -1) {
      // Refresh action
      ref.invalidate(activeOrdersProvider);
      ref.invalidate(productListProvider);
      ref.invalidate(categoryListProvider);
      ref.invalidate(storeListProvider);
      return;
    }
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    if (_isLocked) {
      return LockScreen(
        onUnlock: () => setState(() => _isLocked = false),
      );
    }

    final roleStr = ref.watch(employeeRoleProvider);
    final role = EmployeeRoleType.fromString(roleStr);
    final pages = PermissionService.allowedPages(role);

    // Set default tab based on role once
    if (!_initializedRole && role != null) {
      _initializedRole = true;
      final defaultPage = PermissionService.defaultPage(role);
      final defaultIdx = pages.indexOf(defaultPage);
      if (defaultIdx >= 0 && defaultIdx != _selectedIndex) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) return;
          setState(() => _selectedIndex = defaultIdx);
        });
      }
    }

    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          AppSidebar(
            selectedIndex: _selectedIndex,
            onItemSelected: _onSidebarItemSelected,
            onLockPos: () => setState(() => _isLocked = true),
          ),
          // Content
          Expanded(child: _buildContent(pages)),
        ],
      ),
    );
  }

  Widget _buildContent(List<AppPage> pages) {
    if (pages.isEmpty) {
      return const Center(child: Text('No pages available'));
    }

    final safeIndex = _selectedIndex.clamp(0, pages.length - 1);
    final currentPage = pages[safeIndex];

    return switch (currentPage) {
      AppPage.home => const _PosScreen(),
      AppPage.dashboard => const DashboardPage(),
      AppPage.orders => const OrdersPage(),
      AppPage.kot => const KotPage(),
      AppPage.inventory => const InventoryPage(),
      AppPage.help => const HelpPage(),
      AppPage.settings => const SettingsPage(),
    };
  }
}

/// The main POS screen: order line section + order summary panel
class _PosScreen extends StatelessWidget {
  const _PosScreen();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // Order line section (categories, products, active orders)
        Expanded(child: OrderLineSection()),
        // Order summary panel (cart, payment)
        OrderSummaryPanel(),
      ],
    );
  }
}
