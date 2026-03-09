import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/model/store.dart';
import '../../model/store_models.dart';
import '../../viewmodel/stores_viewmodel.dart';

class StoresPage extends ConsumerWidget {
  const StoresPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storesAsync = ref.watch(dashboardStoreListProvider);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row
          Row(
            children: [
              Text('Stores', style: Theme.of(context).textTheme.headlineSmall),
              const Spacer(),
              FilledButton.icon(
                onPressed: () => _showCreateStoreDialog(context, ref),
                icon: const Icon(Icons.add),
                label: const Text('New Store'),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Data table
          Expanded(
            child: storesAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Error: $e',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                    const SizedBox(height: 12),
                    OutlinedButton(
                      onPressed: () => ref
                          .read(dashboardStoreListProvider.notifier)
                          .refresh(),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
              data: (stores) => stores.isEmpty
                  ? const Center(child: Text('No stores yet. Create one!'))
                  : _StoresDataTable(stores: stores),
            ),
          ),
        ],
      ),
    );
  }

  void _showCreateStoreDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (_) => _CreateStoreDialog(ref: ref),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Stores Data Table
// ═══════════════════════════════════════════════════════════════════════════

class _StoresDataTable extends StatelessWidget {
  final List<Store> stores;
  const _StoresDataTable({required this.stores});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: cs.outlineVariant),
      ),
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: DataTable(
            headingRowColor: WidgetStateProperty.all(
              cs.surfaceContainerHighest.withValues(alpha: 0.5),
            ),
            columns: const [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Address')),
              DataColumn(label: Text('Phone')),
              DataColumn(label: Text('Currency')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Tables')),
            ],
            rows: stores.map((store) {
              return DataRow(
                cells: [
                  DataCell(
                    Text(
                      store.name,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  DataCell(Text(store.address ?? '—')),
                  DataCell(Text(store.phone ?? '—')),
                  DataCell(Text(store.currency)),
                  DataCell(
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: store.isActive
                            ? Colors.green.withValues(alpha: 0.12)
                            : Colors.red.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        store.isActive ? 'Active' : 'Inactive',
                        style: TextStyle(
                          fontSize: 12,
                          color: store.isActive ? Colors.green : Colors.red,
                        ),
                      ),
                    ),
                  ),
                  DataCell(Text('${store.tables.length}')),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Create Store Dialog
// ═══════════════════════════════════════════════════════════════════════════

class _CreateStoreDialog extends ConsumerStatefulWidget {
  final WidgetRef ref;
  const _CreateStoreDialog({required this.ref});

  @override
  ConsumerState<_CreateStoreDialog> createState() => _CreateStoreDialogState();
}

class _CreateStoreDialogState extends ConsumerState<_CreateStoreDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _addressCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  String _currency = 'INR';
  String _timezone = 'Asia/Kolkata';

  @override
  void dispose() {
    _nameCtrl.dispose();
    _addressCtrl.dispose();
    _phoneCtrl.dispose();
    _emailCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    final store = StoreCreate(
      name: _nameCtrl.text.trim(),
      location: _addressCtrl.text.trim().isEmpty
          ? null
          : _addressCtrl.text.trim(),
      phone: _phoneCtrl.text.trim().isEmpty ? null : _phoneCtrl.text.trim(),
      email: _emailCtrl.text.trim().isEmpty ? null : _emailCtrl.text.trim(),
      currency: _currency,
      timezone: _timezone,
    );

    final success = await ref
        .read(createStoreActionProvider.notifier)
        .createStore(store);
    if (success && mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(createStoreActionProvider);
    final isLoading = actionState is AsyncLoading;

    return AlertDialog(
      title: const Text('Create Store'),
      content: SizedBox(
        width: 420,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _nameCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Store Name *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _addressCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _phoneCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Phone',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _emailCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: _currency,
                        decoration: const InputDecoration(
                          labelText: 'Currency',
                          border: OutlineInputBorder(),
                        ),
                        items: const [
                          DropdownMenuItem(value: 'INR', child: Text('INR')),
                          DropdownMenuItem(value: 'USD', child: Text('USD')),
                          DropdownMenuItem(value: 'EUR', child: Text('EUR')),
                          DropdownMenuItem(value: 'GBP', child: Text('GBP')),
                        ],
                        onChanged: (v) =>
                            setState(() => _currency = v ?? 'INR'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: _timezone,
                        decoration: const InputDecoration(
                          labelText: 'Timezone',
                          border: OutlineInputBorder(),
                        ),
                        items: const [
                          DropdownMenuItem(
                            value: 'Asia/Kolkata',
                            child: Text('Asia/Kolkata'),
                          ),
                          DropdownMenuItem(
                            value: 'America/New_York',
                            child: Text('US Eastern'),
                          ),
                          DropdownMenuItem(
                            value: 'Europe/London',
                            child: Text('UK London'),
                          ),
                        ],
                        onChanged: (v) =>
                            setState(() => _timezone = v ?? 'Asia/Kolkata'),
                      ),
                    ),
                  ],
                ),
                if (actionState is AsyncError) ...[
                  const SizedBox(height: 16),
                  Text(
                    actionState.error.toString(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: isLoading ? null : () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: isLoading ? null : _submit,
          child: isLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('Create'),
        ),
      ],
    );
  }
}
