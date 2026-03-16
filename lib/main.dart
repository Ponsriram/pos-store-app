import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/provider/theme_provider.dart';
import 'core/theme/themes.dart';
import 'features/auth/provider/auth_provider.dart';
import 'features/auth/view/screen/login_page.dart';
import 'features/auth/view/screen/store_selection_screen.dart';
import 'features/auth/view/screen/terminal_setup_screen.dart';
import 'features/auth/view/screen/employee_login_screen.dart';
import 'features/home/view/screen/home_page.dart';
import 'init_dependencies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bootstrapAsync = ref.watch(appBootstrapProvider);
    final themeMode = ref.watch(appThemeModeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nosh POS',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      home: bootstrapAsync.when(
        loading: () =>
            const Scaffold(body: Center(child: CircularProgressIndicator())),
        error: (_, _) => const LoginPage(),
        data: (state) => switch (state) {
          AppBootstrapState.login => const LoginPage(),
          AppBootstrapState.storeSelection => const StoreSelectionScreen(),
          AppBootstrapState.terminalSetup => const TerminalSetupScreen(),
          AppBootstrapState.employeeLogin => const EmployeeLoginScreen(),
          AppBootstrapState.home => const HomePage(),
        },
      ),
    );
  }
}
