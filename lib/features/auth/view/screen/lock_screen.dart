import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/provider/theme_provider.dart';
import '../../provider/auth_provider.dart';
import '../../service/employee_auth_service.dart';

class LockScreen extends ConsumerStatefulWidget {
  final VoidCallback onUnlock;

  const LockScreen({super.key, required this.onUnlock});

  @override
  ConsumerState<LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends ConsumerState<LockScreen> {
  final _pinController = TextEditingController();
  final _employeeCodeController = TextEditingController(); // For quick switch
  bool _isLoading = false;
  String? _errorMessage;
  bool _isSwitchingUser = false;

  @override
  void dispose() {
    _pinController.dispose();
    _employeeCodeController.dispose();
    super.dispose();
  }

  Future<void> _unlock() async {
    final code = _employeeCodeController.text.trim();
    final pin = _pinController.text.trim();

    if (pin.isEmpty || (_isSwitchingUser && code.isEmpty)) {
      setState(() => _errorMessage = 'Please enter required fields');
      return;
    }

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final terminalId = ref.read(terminalIdProvider);
      final storeId = ref.read(selectedStoreIdProvider);

      if (terminalId == null || storeId == null) {
        setState(() => _errorMessage = 'Store or Terminal not configured');
        return;
      }

      final authService = ref.read(employeeAuthServiceProvider);

      // If not switching user, we still need the current employee code to log back in.
      // Alternatively, the backend could support just a PIN auth for the active session,
      // but assuming we need both code and pin for a full authentication:
      // If we don't have the current employee code available easily, we will force a user switch.

      final result = await authService.login(
        employeeCode: code, // Re-authenticate via full switch for now
        pin: pin,
        storeId: storeId,
        terminalId: terminalId,
      );

      result.fold(
        (failure) {
          setState(() {
            _errorMessage = failure.message;
            _isLoading = false;
          });
        },
        (employee) async {
          // Update employee role provider
          await ref
              .read(employeeRoleProvider.notifier)
              .setRole(employee.role ?? 'Cashier');

          if (mounted) widget.onUnlock();
        },
      );
    } catch (e) {
      setState(() {
        _errorMessage = 'An unexpected error occurred.';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    final surface = colors.surface;
    final primary = colors.primary;
    final textPrimary = colors.onSurface;
    final textSecondary = colors.onSurfaceVariant;
    final error = colors.error;

    return Scaffold(
      backgroundColor: Colors.black.withOpacity(
        0.8,
      ), // Semi-transparent or solid
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: surface,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 15,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(Icons.lock_outline, size: 64, color: primary),
              const SizedBox(height: 16),
              Text(
                'POS Locked',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: textPrimary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              if (_isSwitchingUser)
                const Text(
                  'Switching User or Re-authenticating',
                  textAlign: TextAlign.center,
                )
              else
                Text(
                  'Enter PIN to unlock, or switch user.',
                  style: TextStyle(color: textSecondary),
                  textAlign: TextAlign.center,
                ),
              const SizedBox(height: 32),

              if (_errorMessage != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    _errorMessage!,
                    style: TextStyle(color: error, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),

              if (_isSwitchingUser)
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextField(
                    controller: _employeeCodeController,
                    decoration: const InputDecoration(
                      labelText: 'Employee Code',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                )
              else
                // If not switching user, we force them to switch anyway to ensure code is entered since we don't cache code.
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextField(
                    controller: _employeeCodeController,
                    decoration: const InputDecoration(
                      labelText: 'Employee Code',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),

              TextField(
                controller: _pinController,
                obscureText: true,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'PIN',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _isLoading ? null : _unlock,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: primary,
                  foregroundColor: Colors.white,
                  disabledBackgroundColor: primary.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: _isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Text(
                        'Unlock POS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
