import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/connection_checker.dart';
import '../../../../core/storage/local_storage.dart';
import '../../../../core/utils/show_snackbar.dart';
import '../../../../init_dependencies.dart';
import '../../provider/auth_provider.dart';
import '../../service/terminal_service.dart';
import 'employee_login_screen.dart';
import 'package:http/http.dart' as http;

class TerminalSetupScreen extends ConsumerStatefulWidget {
  const TerminalSetupScreen({super.key});

  @override
  ConsumerState<TerminalSetupScreen> createState() =>
      _TerminalSetupScreenState();
}

class _TerminalSetupScreenState extends ConsumerState<TerminalSetupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _nameCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    final storeId = ref.read(selectedStoreIdProvider);
    if (storeId == null) {
      if (mounted) {
        showSnackBar(
          context,
          'No store selected. Please go back and select a store.',
          SnackBarType.error,
        );
        setState(() => _isLoading = false);
      }
      return;
    }

    final terminalService = TerminalService(
      client: serviceLocator<http.Client>(),
      connectionChecker: serviceLocator<ConnectionChecker>(),
      localStorage: serviceLocator<LocalStorage>(),
    );

    final result = await terminalService.registerTerminal(
      storeId: storeId,
      terminalName: _nameCtrl.text.trim(),
    );

    if (!mounted) return;

    result.fold(
      (failure) {
        setState(() => _isLoading = false);
        showSnackBar(context, failure.message, SnackBarType.error);
      },
      (registration) async {
        // Update terminal provider
        await ref
            .read(terminalIdProvider.notifier)
            .set(registration.terminalId);

        // Re-evaluate bootstrap
        await ref.read(appBootstrapProvider.notifier).reevaluate();

        if (!mounted) return;

        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => const EmployeeLoginScreen()),
          (_) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ── Header ────────────────────────────────────────────
                Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: colorScheme.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.point_of_sale_rounded,
                        color: colorScheme.onPrimary,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Nosh POS',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.5,
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                Text(
                  'Set up this terminal',
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.5,
                    color: colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Give this POS device a name so you can identify\n'
                  'it across your store.',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 40),

                // ── Form ──────────────────────────────────────────────
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Terminal name',
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: colorScheme.onSurface,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _nameCtrl,
                        textInputAction: TextInputAction.done,
                        autofocus: true,
                        onFieldSubmitted: (_) => _submit(),
                        decoration: InputDecoration(
                          hintText: 'e.g. Front Counter',
                          prefixIcon: Icon(
                            Icons.terminal_rounded,
                            size: 20,
                            color: colorScheme.outline,
                          ),
                          filled: true,
                          fillColor: colorScheme.surfaceContainerLow,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: colorScheme.outlineVariant,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: colorScheme.outlineVariant,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: colorScheme.primary,
                              width: 1.6,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: colorScheme.error),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: colorScheme.error,
                              width: 1.6,
                            ),
                          ),
                        ),
                        validator: (v) {
                          if (v == null || v.trim().isEmpty) {
                            return 'Terminal name is required';
                          }
                          if (v.trim().length < 2) {
                            return 'Name must be at least 2 characters';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),

                      // ── Suggestions ───────────────────────────────
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          _SuggestionChip(
                            label: 'Front Counter',
                            onTap: () =>
                                _nameCtrl.text = 'Front Counter',
                          ),
                          _SuggestionChip(
                            label: 'Bar POS',
                            onTap: () => _nameCtrl.text = 'Bar POS',
                          ),
                          _SuggestionChip(
                            label: 'Kitchen POS',
                            onTap: () =>
                                _nameCtrl.text = 'Kitchen POS',
                          ),
                          _SuggestionChip(
                            label: 'Drive-Thru',
                            onTap: () =>
                                _nameCtrl.text = 'Drive-Thru',
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),

                      // ── Submit button ─────────────────────────────
                      SizedBox(
                        height: 50,
                        child: FilledButton(
                          onPressed: _isLoading ? null : _submit,
                          style: FilledButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: _isLoading
                              ? SizedBox(
                                  width: 22,
                                  height: 22,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2.5,
                                    color: colorScheme.onPrimary,
                                  ),
                                )
                              : Text(
                                  'Register Terminal',
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: colorScheme.onPrimary,
                                    letterSpacing: 0.2,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                ),

                const Spacer(),

                // ── Footer ────────────────────────────────────────────
                Center(
                  child: Text(
                    'This device will be registered as a terminal.\n'
                    'Registration happens only once.',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant
                          .withValues(alpha: 0.6),
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SuggestionChip extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _SuggestionChip({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ActionChip(
      label: Text(
        label,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
      ),
      onPressed: onTap,
      backgroundColor: colorScheme.surfaceContainerLow,
      side: BorderSide(color: colorScheme.outlineVariant, width: 0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}
