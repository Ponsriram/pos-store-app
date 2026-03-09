import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/viewmodel/store_viewmodel.dart';
import '../../model/inventory_models.dart';
import '../../viewmodel/inventory_viewmodel.dart';

class InventoryPage extends ConsumerStatefulWidget {
  const InventoryPage({super.key});

  @override
  ConsumerState<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends ConsumerState<InventoryPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabCtrl;

  @override
  void initState() {
    super.initState();
    _tabCtrl = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Text(
                'Inventory',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Spacer(),
              OutlinedButton.icon(
                onPressed: () => _showAdjustStockDialog(context),
                icon: const Icon(Icons.tune),
                label: const Text('Adjust Stock'),
              ),
              const SizedBox(width: 12),
              FilledButton.icon(
                onPressed: () => _showCreateItemDialog(context),
                icon: const Icon(Icons.add),
                label: const Text('New Item'),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Tabs
          TabBar(
            controller: _tabCtrl,
            isScrollable: true,
            tabs: const [
              Tab(text: 'Items'),
              Tab(text: 'Stock Levels'),
            ],
          ),
          const SizedBox(height: 16),

          // Tab content
          Expanded(
            child: TabBarView(
              controller: _tabCtrl,
              children: const [_InventoryItemsTab(), _StockLevelsTab()],
            ),
          ),
        ],
      ),
    );
  }

  void _showCreateItemDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => const _CreateInventoryItemDialog(),
    );
  }

  void _showAdjustStockDialog(BuildContext context) {
    showDialog(context: context, builder: (_) => const _AdjustStockDialog());
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Inventory Items Tab
// ═══════════════════════════════════════════════════════════════════════════

class _InventoryItemsTab extends ConsumerWidget {
  const _InventoryItemsTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemsAsync = ref.watch(inventoryItemListProvider);

    return itemsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Error: $e',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: () =>
                  ref.read(inventoryItemListProvider.notifier).refresh(),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
      data: (items) {
        if (items.isEmpty) {
          return const Center(child: Text('No inventory items yet.'));
        }
        return _InventoryItemsDataTable(items: items);
      },
    );
  }
}

class _InventoryItemsDataTable extends ConsumerWidget {
  final List<InventoryItem> items;
  const _InventoryItemsDataTable({required this.items});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              DataColumn(label: Text('SKU')),
              DataColumn(label: Text('Category')),
              DataColumn(label: Text('Min Stock'), numeric: true),
              DataColumn(label: Text('Avg Cost'), numeric: true),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Actions')),
            ],
            rows: items.map((item) {
              return DataRow(
                cells: [
                  DataCell(
                    Text(
                      item.name,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  DataCell(Text(item.sku ?? '—')),
                  DataCell(Text(item.category ?? '—')),
                  DataCell(Text(item.minStock.toString())),
                  DataCell(Text(item.averageCost?.toStringAsFixed(2) ?? '—')),
                  DataCell(
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: item.isActive
                            ? Colors.green.withValues(alpha: 0.12)
                            : Colors.red.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        item.isActive ? 'Active' : 'Inactive',
                        style: TextStyle(
                          fontSize: 12,
                          color: item.isActive ? Colors.green : Colors.red,
                        ),
                      ),
                    ),
                  ),
                  DataCell(
                    IconButton(
                      icon: const Icon(Icons.edit_outlined, size: 20),
                      tooltip: 'Edit',
                      onPressed: () => _showEditDialog(context, ref, item),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  void _showEditDialog(
    BuildContext context,
    WidgetRef ref,
    InventoryItem item,
  ) {
    showDialog(
      context: context,
      builder: (_) => _EditInventoryItemDialog(item: item),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Stock Levels Tab
// ═══════════════════════════════════════════════════════════════════════════

class _StockLevelsTab extends ConsumerWidget {
  const _StockLevelsTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stockAsync = ref.watch(stockLevelListProvider);

    return stockAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Error: $e',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: () =>
                  ref.read(stockLevelListProvider.notifier).refresh(),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
      data: (levels) {
        if (levels.isEmpty) {
          return const Center(child: Text('No stock data yet.'));
        }
        return _StockLevelsDataTable(levels: levels);
      },
    );
  }
}

class _StockLevelsDataTable extends StatelessWidget {
  final List<StockLevel> levels;
  const _StockLevelsDataTable({required this.levels});

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
              DataColumn(label: Text('Item ID')),
              DataColumn(label: Text('Location ID')),
              DataColumn(label: Text('Quantity'), numeric: true),
              DataColumn(label: Text('Last Updated')),
            ],
            rows: levels.map((sl) {
              return DataRow(
                cells: [
                  DataCell(
                    Text(
                      sl.itemId,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  DataCell(Text(sl.locationId)),
                  DataCell(Text(sl.quantity.toString())),
                  DataCell(
                    Text(
                      sl.updatedAt != null
                          ? '${sl.updatedAt!.day}/${sl.updatedAt!.month}/${sl.updatedAt!.year}'
                          : '—',
                    ),
                  ),
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
// Create Inventory Item Dialog
// ═══════════════════════════════════════════════════════════════════════════

class _CreateInventoryItemDialog extends ConsumerStatefulWidget {
  const _CreateInventoryItemDialog();

  @override
  ConsumerState<_CreateInventoryItemDialog> createState() =>
      _CreateInventoryItemDialogState();
}

class _CreateInventoryItemDialogState
    extends ConsumerState<_CreateInventoryItemDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _skuCtrl = TextEditingController();
  final _categoryCtrl = TextEditingController();
  final _minStockCtrl = TextEditingController(text: '0');
  String? _selectedUnitId;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _skuCtrl.dispose();
    _categoryCtrl.dispose();
    _minStockCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    final store = ref.read(selectedStoreProvider);
    if (store == null) return;

    final item = InventoryItemCreate(
      storeId: store.id,
      name: _nameCtrl.text.trim(),
      sku: _skuCtrl.text.trim().isEmpty ? null : _skuCtrl.text.trim(),
      category: _categoryCtrl.text.trim().isEmpty
          ? null
          : _categoryCtrl.text.trim(),
      unitId: _selectedUnitId ?? '',
      minStock: double.tryParse(_minStockCtrl.text) ?? 0,
    );

    final success = await ref
        .read(createInventoryItemActionProvider.notifier)
        .createItem(item);
    if (success && mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(createInventoryItemActionProvider);
    final isLoading = actionState is AsyncLoading;
    final unitsAsync = ref.watch(inventoryUnitListProvider);

    return AlertDialog(
      title: const Text('Create Inventory Item'),
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
                    labelText: 'Item Name *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _skuCtrl,
                        decoration: const InputDecoration(
                          labelText: 'SKU',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: _categoryCtrl,
                        decoration: const InputDecoration(
                          labelText: 'Category',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                unitsAsync.when(
                  loading: () => const LinearProgressIndicator(),
                  error: (_, __) => const Text('Failed to load units'),
                  data: (units) => DropdownButtonFormField<String>(
                    value: _selectedUnitId,
                    decoration: const InputDecoration(
                      labelText: 'Unit *',
                      border: OutlineInputBorder(),
                    ),
                    items: units
                        .map(
                          (u) => DropdownMenuItem(
                            value: u.id,
                            child: Text('${u.name} (${u.abbreviation})'),
                          ),
                        )
                        .toList(),
                    onChanged: (v) => setState(() => _selectedUnitId = v),
                    validator: (v) =>
                        (v == null || v.isEmpty) ? 'Required' : null,
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _minStockCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Minimum Stock',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
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

// ═══════════════════════════════════════════════════════════════════════════
// Edit Inventory Item Dialog
// ═══════════════════════════════════════════════════════════════════════════

class _EditInventoryItemDialog extends ConsumerStatefulWidget {
  final InventoryItem item;
  const _EditInventoryItemDialog({required this.item});

  @override
  ConsumerState<_EditInventoryItemDialog> createState() =>
      _EditInventoryItemDialogState();
}

class _EditInventoryItemDialogState
    extends ConsumerState<_EditInventoryItemDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameCtrl;
  late final TextEditingController _skuCtrl;
  late final TextEditingController _categoryCtrl;
  late final TextEditingController _minStockCtrl;
  late bool _isActive;

  @override
  void initState() {
    super.initState();
    final i = widget.item;
    _nameCtrl = TextEditingController(text: i.name);
    _skuCtrl = TextEditingController(text: i.sku ?? '');
    _categoryCtrl = TextEditingController(text: i.category ?? '');
    _minStockCtrl = TextEditingController(text: i.minStock.toString());
    _isActive = i.isActive;
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _skuCtrl.dispose();
    _categoryCtrl.dispose();
    _minStockCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    final update = InventoryItemUpdate(
      name: _nameCtrl.text.trim(),
      sku: _skuCtrl.text.trim().isEmpty ? null : _skuCtrl.text.trim(),
      category: _categoryCtrl.text.trim().isEmpty
          ? null
          : _categoryCtrl.text.trim(),
      minStock: double.tryParse(_minStockCtrl.text),
      isActive: _isActive,
    );

    final success = await ref
        .read(updateInventoryItemActionProvider.notifier)
        .updateItem(widget.item.id, update);
    if (success && mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(updateInventoryItemActionProvider);
    final isLoading = actionState is AsyncLoading;

    return AlertDialog(
      title: const Text('Edit Inventory Item'),
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
                    labelText: 'Item Name *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _skuCtrl,
                        decoration: const InputDecoration(
                          labelText: 'SKU',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: _categoryCtrl,
                        decoration: const InputDecoration(
                          labelText: 'Category',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _minStockCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Minimum Stock',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                SwitchListTile(
                  title: const Text('Active'),
                  value: _isActive,
                  onChanged: (v) => setState(() => _isActive = v),
                  contentPadding: EdgeInsets.zero,
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
              : const Text('Save'),
        ),
      ],
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Adjust Stock Dialog
// ═══════════════════════════════════════════════════════════════════════════

class _AdjustStockDialog extends ConsumerStatefulWidget {
  const _AdjustStockDialog();

  @override
  ConsumerState<_AdjustStockDialog> createState() => _AdjustStockDialogState();
}

class _AdjustStockDialogState extends ConsumerState<_AdjustStockDialog> {
  final _formKey = GlobalKey<FormState>();
  final _quantityCtrl = TextEditingController();
  final _reasonCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();
  String? _selectedItemId;
  String? _selectedLocationId;

  @override
  void dispose() {
    _quantityCtrl.dispose();
    _reasonCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    final store = ref.read(selectedStoreProvider);
    if (store == null) return;

    final adjustment = StockAdjustmentCreate(
      storeId: store.id,
      itemId: _selectedItemId ?? '',
      locationId: _selectedLocationId ?? '',
      quantityChange: double.tryParse(_quantityCtrl.text) ?? 0,
      reason: _reasonCtrl.text.trim(),
      notes: _notesCtrl.text.trim().isEmpty ? null : _notesCtrl.text.trim(),
    );

    final success = await ref
        .read(adjustStockActionProvider.notifier)
        .adjustStock(adjustment);
    if (success && mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(adjustStockActionProvider);
    final isLoading = actionState is AsyncLoading;
    final itemsAsync = ref.watch(inventoryItemListProvider);
    final locationsAsync = ref.watch(inventoryLocationListProvider);

    return AlertDialog(
      title: const Text('Adjust Stock'),
      content: SizedBox(
        width: 420,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Item picker
                itemsAsync.when(
                  loading: () => const LinearProgressIndicator(),
                  error: (_, __) => const Text('Failed to load items'),
                  data: (items) => DropdownButtonFormField<String>(
                    value: _selectedItemId,
                    decoration: const InputDecoration(
                      labelText: 'Item *',
                      border: OutlineInputBorder(),
                    ),
                    items: items
                        .map(
                          (i) => DropdownMenuItem(
                            value: i.id,
                            child: Text(i.name),
                          ),
                        )
                        .toList(),
                    onChanged: (v) => setState(() => _selectedItemId = v),
                    validator: (v) =>
                        (v == null || v.isEmpty) ? 'Required' : null,
                  ),
                ),
                const SizedBox(height: 16),
                // Location picker
                locationsAsync.when(
                  loading: () => const LinearProgressIndicator(),
                  error: (_, __) => const Text('Failed to load locations'),
                  data: (locations) => DropdownButtonFormField<String>(
                    value: _selectedLocationId,
                    decoration: const InputDecoration(
                      labelText: 'Location *',
                      border: OutlineInputBorder(),
                    ),
                    items: locations
                        .map(
                          (l) => DropdownMenuItem(
                            value: l.id,
                            child: Text(l.name),
                          ),
                        )
                        .toList(),
                    onChanged: (v) => setState(() => _selectedLocationId = v),
                    validator: (v) =>
                        (v == null || v.isEmpty) ? 'Required' : null,
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _quantityCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Quantity Change *',
                    helperText: 'Use negative for reduction',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    signed: true,
                    decimal: true,
                  ),
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) return 'Required';
                    if (double.tryParse(v) == null) return 'Invalid number';
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _reasonCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Reason *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _notesCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Notes',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 2,
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
              : const Text('Submit'),
        ),
      ],
    );
  }
}
