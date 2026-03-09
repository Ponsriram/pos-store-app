import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/model/category.dart';
import '../../../home/model/product.dart';
import '../../../home/viewmodel/store_viewmodel.dart';
import '../../model/product_models.dart';
import '../../viewmodel/products_viewmodel.dart';

class ProductsPage extends ConsumerWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(dashboardProductListProvider);
    final categoriesAsync = ref.watch(dashboardCategoryListProvider);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ─── Header + actions ────────────────────────────────────
          Row(
            children: [
              Text(
                'Products',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Spacer(),
              OutlinedButton.icon(
                onPressed: () => _showCreateCategoryDialog(context, ref),
                icon: const Icon(Icons.category),
                label: const Text('New Category'),
              ),
              const SizedBox(width: 12),
              FilledButton.icon(
                onPressed: () => _showCreateProductDialog(context, ref),
                icon: const Icon(Icons.add),
                label: const Text('New Product'),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // ─── Category filter chips ───────────────────────────────
          categoriesAsync.when(
            loading: () => const SizedBox.shrink(),
            error: (_, __) => const SizedBox.shrink(),
            data: (categories) => _CategoryFilterChips(categories: categories),
          ),
          const SizedBox(height: 16),

          // ─── Products data table ─────────────────────────────────
          Expanded(
            child: productsAsync.when(
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
                          .read(dashboardProductListProvider.notifier)
                          .refresh(),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
              data: (products) => products.isEmpty
                  ? const Center(child: Text('No products yet.'))
                  : _ProductsDataTable(products: products),
            ),
          ),
        ],
      ),
    );
  }

  void _showCreateProductDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (_) => _CreateProductDialog(ref: ref),
    );
  }

  void _showCreateCategoryDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (_) => _CreateCategoryDialog(ref: ref),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Category Filter Chips
// ═══════════════════════════════════════════════════════════════════════════

class _CategoryFilterChips extends ConsumerWidget {
  final List<Category> categories;
  const _CategoryFilterChips({required this.categories});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(dashboardProductCategoryFilterProvider);
    return Wrap(
      spacing: 8,
      children: [
        FilterChip(
          label: const Text('All'),
          selected: selected == null,
          onSelected: (_) => ref
              .read(dashboardProductCategoryFilterProvider.notifier)
              .select(null),
        ),
        ...categories.map(
          (cat) => FilterChip(
            label: Text(cat.name),
            selected: selected == cat.id,
            onSelected: (_) => ref
                .read(dashboardProductCategoryFilterProvider.notifier)
                .select(cat.id),
          ),
        ),
      ],
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Products Data Table
// ═══════════════════════════════════════════════════════════════════════════

class _ProductsDataTable extends ConsumerWidget {
  final List<Product> products;
  const _ProductsDataTable({required this.products});

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
              DataColumn(label: Text('Price'), numeric: true),
              DataColumn(label: Text('Tax %'), numeric: true),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Actions')),
            ],
            rows: products.map((p) {
              return DataRow(
                cells: [
                  DataCell(
                    Text(
                      p.name,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  DataCell(Text(p.price.toStringAsFixed(2))),
                  DataCell(Text('${p.taxPercent}%')),
                  DataCell(
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: p.isActive
                            ? Colors.green.withValues(alpha: 0.12)
                            : Colors.red.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        p.isActive ? 'Active' : 'Inactive',
                        style: TextStyle(
                          fontSize: 12,
                          color: p.isActive ? Colors.green : Colors.red,
                        ),
                      ),
                    ),
                  ),
                  DataCell(
                    IconButton(
                      icon: const Icon(Icons.edit_outlined, size: 20),
                      tooltip: 'Edit',
                      onPressed: () => _showEditProductDialog(context, ref, p),
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

  void _showEditProductDialog(
    BuildContext context,
    WidgetRef ref,
    Product product,
  ) {
    showDialog(
      context: context,
      builder: (_) => _EditProductDialog(ref: ref, product: product),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Create Product Dialog
// ═══════════════════════════════════════════════════════════════════════════

class _CreateProductDialog extends ConsumerStatefulWidget {
  final WidgetRef ref;
  const _CreateProductDialog({required this.ref});

  @override
  ConsumerState<_CreateProductDialog> createState() =>
      _CreateProductDialogState();
}

class _CreateProductDialogState extends ConsumerState<_CreateProductDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _descCtrl = TextEditingController();
  final _priceCtrl = TextEditingController();
  final _taxCtrl = TextEditingController(text: '0');
  String? _selectedCategoryId;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _descCtrl.dispose();
    _priceCtrl.dispose();
    _taxCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    final store = ref.read(selectedStoreProvider);
    if (store == null) return;

    final product = ProductCreate(
      storeId: store.id,
      name: _nameCtrl.text.trim(),
      description: _descCtrl.text.trim().isEmpty ? null : _descCtrl.text.trim(),
      price: double.tryParse(_priceCtrl.text) ?? 0,
      taxPercent: double.tryParse(_taxCtrl.text) ?? 0,
      categoryId: _selectedCategoryId,
    );

    final success = await ref
        .read(createProductActionProvider.notifier)
        .createProduct(product);
    if (success && mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(createProductActionProvider);
    final isLoading = actionState is AsyncLoading;
    final categoriesAsync = ref.watch(dashboardCategoryListProvider);

    return AlertDialog(
      title: const Text('Create Product'),
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
                    labelText: 'Product Name *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _descCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _priceCtrl,
                        decoration: const InputDecoration(
                          labelText: 'Price *',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (v) {
                          if (v == null || v.trim().isEmpty) return 'Required';
                          if (double.tryParse(v) == null) return 'Invalid';
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: _taxCtrl,
                        decoration: const InputDecoration(
                          labelText: 'Tax %',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                categoriesAsync.when(
                  loading: () => const LinearProgressIndicator(),
                  error: (_, __) => const Text('Failed to load categories'),
                  data: (categories) => DropdownButtonFormField<String>(
                    value: _selectedCategoryId,
                    decoration: const InputDecoration(
                      labelText: 'Category',
                      border: OutlineInputBorder(),
                    ),
                    items: categories
                        .map(
                          (c) => DropdownMenuItem(
                            value: c.id,
                            child: Text(c.name),
                          ),
                        )
                        .toList(),
                    onChanged: (v) => setState(() => _selectedCategoryId = v),
                  ),
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
// Edit Product Dialog
// ═══════════════════════════════════════════════════════════════════════════

class _EditProductDialog extends ConsumerStatefulWidget {
  final WidgetRef ref;
  final Product product;
  const _EditProductDialog({required this.ref, required this.product});

  @override
  ConsumerState<_EditProductDialog> createState() => _EditProductDialogState();
}

class _EditProductDialogState extends ConsumerState<_EditProductDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameCtrl;
  late final TextEditingController _descCtrl;
  late final TextEditingController _priceCtrl;
  late final TextEditingController _taxCtrl;
  late bool _isActive;

  @override
  void initState() {
    super.initState();
    final p = widget.product;
    _nameCtrl = TextEditingController(text: p.name);
    _descCtrl = TextEditingController(text: p.description ?? '');
    _priceCtrl = TextEditingController(text: p.price.toString());
    _taxCtrl = TextEditingController(text: p.taxPercent.toString());
    _isActive = p.isActive;
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _descCtrl.dispose();
    _priceCtrl.dispose();
    _taxCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    final update = ProductUpdate(
      name: _nameCtrl.text.trim(),
      description: _descCtrl.text.trim().isEmpty ? null : _descCtrl.text.trim(),
      price: double.tryParse(_priceCtrl.text),
      taxPercent: double.tryParse(_taxCtrl.text),
      isActive: _isActive,
    );

    final success = await ref
        .read(updateProductActionProvider.notifier)
        .updateProduct(widget.product.id, update);
    if (success && mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(updateProductActionProvider);
    final isLoading = actionState is AsyncLoading;

    return AlertDialog(
      title: const Text('Edit Product'),
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
                    labelText: 'Product Name *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _descCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _priceCtrl,
                        decoration: const InputDecoration(
                          labelText: 'Price *',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (v) {
                          if (v == null || v.trim().isEmpty) return 'Required';
                          if (double.tryParse(v) == null) return 'Invalid';
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: _taxCtrl,
                        decoration: const InputDecoration(
                          labelText: 'Tax %',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
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
// Create Category Dialog
// ═══════════════════════════════════════════════════════════════════════════

class _CreateCategoryDialog extends ConsumerStatefulWidget {
  final WidgetRef ref;
  const _CreateCategoryDialog({required this.ref});

  @override
  ConsumerState<_CreateCategoryDialog> createState() =>
      _CreateCategoryDialogState();
}

class _CreateCategoryDialogState extends ConsumerState<_CreateCategoryDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();

  @override
  void dispose() {
    _nameCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    final store = ref.read(selectedStoreProvider);
    if (store == null) return;

    final category = CategoryCreate(
      storeId: store.id,
      name: _nameCtrl.text.trim(),
    );

    final success = await ref
        .read(createCategoryActionProvider.notifier)
        .createCategory(category);
    if (success && mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(createCategoryActionProvider);
    final isLoading = actionState is AsyncLoading;

    return AlertDialog(
      title: const Text('Create Category'),
      content: SizedBox(
        width: 360,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameCtrl,
                decoration: const InputDecoration(
                  labelText: 'Category Name *',
                  border: OutlineInputBorder(),
                ),
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? 'Required' : null,
              ),
              if (actionState is AsyncError) ...[
                const SizedBox(height: 16),
                Text(
                  actionState.error.toString(),
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ],
            ],
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
