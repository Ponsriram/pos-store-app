import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/rbac/role_permissions.dart';
import '../../../../core/database/app_database.dart';
import '../../../../init_dependencies.dart';
import '../../viewmodel/home_viewmodel.dart';
import '../../viewmodel/store_viewmodel.dart';
import '../../../dashboard/view/screen/dashboard_page.dart';
import '../../../help/view/screen/help_page.dart';
import '../../../kot/view/screen/kot_page.dart';
import '../../../orders/view/screen/orders_page.dart';
import '../../../settings/view/screen/settings_page.dart';
import '../widgets/order_line_section.dart';
import '../widgets/order_summary_panel.dart';
import '../widgets/sidebar.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  AppPage? _selectedPage;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _initDefaultPage();
  }

  Future<void> _initDefaultPage() async {
    final db = serviceLocator<AppDatabase>();
    final user = await db.getLoggedInUser();
    if (mounted) {
      if (user != null) {
        final allowed = getAllowedPages(user.role);
        setState(() {
          _selectedPage = allowed.isNotEmpty ? allowed.first : AppPage.home;
        });
      } else {
        setState(() => _selectedPage = AppPage.home);
      }
      setState(() => _isLoading = false);
    }
  }

  void _onSidebarItemSelected(AppPage? page) {
    if (page == null) {
      // Refresh action
      ref.invalidate(activeOrdersProvider);
      ref.invalidate(productListProvider);
      ref.invalidate(categoryListProvider);
      ref.invalidate(storeListProvider);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Refreshing data…'),
            duration: Duration(seconds: 1),
          ),
        );
      }
      return;
    }
    setState(() => _selectedPage = page);
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading || _selectedPage == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          AppSidebar(
            selectedPage: _selectedPage!,
            onItemSelected: _onSidebarItemSelected,
          ),
          // Content
          Expanded(child: _buildContent(_selectedPage!)),
        ],
      ),
    );
  }

  Widget _buildContent(AppPage page) {
    switch (page) {
      case AppPage.home:
        return const _PosScreen();
      case AppPage.dashboard:
        return const DashboardPage();
      case AppPage.orders:
        return const OrdersPage();
      case AppPage.kot:
        return const KotPage();
      case AppPage.help:
        return const HelpPage();
      case AppPage.settings:
        return const SettingsPage();
    }
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
