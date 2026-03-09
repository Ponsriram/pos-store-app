import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/model/order.dart';
import '../../../home/model/product.dart';
import '../../../home/viewmodel/home_viewmodel.dart';
import '../../../home/viewmodel/store_viewmodel.dart';
import '../../viewmodel/orders_viewmodel.dart';

/// Full-screen dialog for creating a new order.
///
/// Left side: category tabs + product grid (reads from existing home providers).
/// Right side: order type, table selector, cart, and create button.
/// Uses separate providers ([newOrderCartProvider], etc.) so it does NOT
/// interfere with the POS homepage state.
class NewOrderPage extends ConsumerStatefulWidget {
  const NewOrderPage({super.key});

  @override
  ConsumerState<NewOrderPage> createState() => _NewOrderPageState();
}

class _NewOrderPageState extends ConsumerState<NewOrderPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final createOp = ref.watch(createOrderOperationProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('New Order'),
        centerTitle: false,
        actions: [
          if (createOp.isLoading)
            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            ),
        ],
      ),
      body: Row(
        children: [
          // ── Left: Product catalogue ──────────────────────────────
          Expanded(
            flex: 3,
            child: Column(
              children: [
                // Category tabs
                const SizedBox(height: 8),
                _CategoryBar(),
                const SizedBox(height: 8),
                // Product grid
                Expanded(child: _ProductGrid(onAddProduct: _addProduct)),
              ],
            ),
          ),

          // ── Right: Order builder ─────────────────────────────────
          Container(
            width: 360,
            decoration: BoxDecoration(
              color: colorScheme.surface,
              border: Border(
                left: BorderSide(color: colorScheme.outlineVariant, width: 0.5),
              ),
            ),
            child: Column(
              children: [
                // Order type selector
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order Type',
                        style: textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _OrderTypeSelector(),
                    ],
                  ),
                ),

                // Table selector (only for dine-in)
                _TableSelector(),

                const Divider(height: 1),

                // Cart items
                Expanded(child: _CartList()),

                const Divider(height: 1),

                // Totals + create button
                _OrderFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _addProduct(Product product) {
    ref
        .read(newOrderCartProvider.notifier)
        .addItem(
          OrderItemCreate(
            productId: product.id,
            quantity: 1,
            price: product.price,
            notes: null,
          ),
        );
  }
}

// ---------------------------------------------------------------------------
// Category bar — reads from shared home providers (read-only)
// ---------------------------------------------------------------------------

class _CategoryBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsync = ref.watch(categoryListProvider);
    final selectedId = ref.watch(selectedCategoryIdProvider);

    return categoriesAsync.when(
      loading: () => const SizedBox(
        height: 40,
        child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
      ),
      error: (e, _) => Text('Error: $e'),
      data: (categories) {
        return SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _chip(context, ref, 'All', null, selectedId),
              ...categories.map(
                (cat) => _chip(context, ref, cat.name, cat.id, selectedId),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _chip(
    BuildContext context,
    WidgetRef ref,
    String label,
    String? id,
    String? selectedId,
  ) {
    final colorScheme = Theme.of(context).colorScheme;
    final isSelected = id == selectedId;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text(label),
        selected: isSelected,
        onSelected: (_) =>
            ref.read(selectedCategoryIdProvider.notifier).select(id),
        selectedColor: colorScheme.primaryContainer,
        checkmarkColor: colorScheme.onPrimaryContainer,
        labelStyle: TextStyle(
          color: isSelected
              ? colorScheme.onPrimaryContainer
              : colorScheme.onSurfaceVariant,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
        ),
        side: BorderSide(
          color: isSelected ? Colors.transparent : colorScheme.outlineVariant,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Product grid — reads from shared home providers, adds to NEW ORDER cart
// ---------------------------------------------------------------------------

class _ProductGrid extends ConsumerWidget {
  final void Function(Product product) onAddProduct;

  const _ProductGrid({required this.onAddProduct});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productListProvider);

    return productsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Error: $e')),
      data: (products) {
        if (products.isEmpty) {
          return Center(
            child: Text(
              'No products found',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          );
        }
        return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.85,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return _NewOrderProductCard(
              product: product,
              onAdd: () => onAddProduct(product),
            );
          },
        );
      },
    );
  }
}

class _NewOrderProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onAdd;

  const _NewOrderProductCard({required this.product, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 0,
      color: colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: colorScheme.outlineVariant, width: 0.5),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onAdd,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.fastfood_outlined,
                    size: 36,
                    color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                product.name,
                style: textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    '\u20B9${product.price.toStringAsFixed(2)}',
                    style: textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary,
                    ),
                  ),
                  const Spacer(),
                  Icon(Icons.add_circle, color: colorScheme.primary, size: 22),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Order type selector
// ---------------------------------------------------------------------------

class _OrderTypeSelector extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type = ref.watch(newOrderTypeProvider);

    return SizedBox(
      width: double.infinity,
      child: SegmentedButton<String>(
        segments: const [
          ButtonSegment(
            value: 'dine_in',
            label: Text('Dine In'),
            icon: Icon(Icons.restaurant, size: 16),
          ),
          ButtonSegment(
            value: 'takeaway',
            label: Text('Takeaway'),
            icon: Icon(Icons.takeout_dining, size: 16),
          ),
          ButtonSegment(
            value: 'delivery',
            label: Text('Delivery'),
            icon: Icon(Icons.delivery_dining, size: 16),
          ),
        ],
        selected: {type},
        onSelectionChanged: (val) =>
            ref.read(newOrderTypeProvider.notifier).select(val.first),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Table selector (shown only for dine-in orders)
// ---------------------------------------------------------------------------

class _TableSelector extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type = ref.watch(newOrderTypeProvider);
    if (type != 'dine_in') return const SizedBox.shrink();

    final store = ref.watch(selectedStoreProvider);
    final selectedTableId = ref.watch(newOrderTableIdProvider);
    final tables = store?.tables ?? [];
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Table',
            style: Theme.of(
              context,
            ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          if (tables.isEmpty)
            Text(
              'No tables configured',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            )
          else
            Wrap(
              spacing: 8,
              runSpacing: 6,
              children: tables.map((t) {
                final isSelected = selectedTableId == t.id;
                return ChoiceChip(
                  label: Text(t.label ?? 'Table ${t.tableNumber}'),
                  selected: isSelected,
                  onSelected: (_) => ref
                      .read(newOrderTableIdProvider.notifier)
                      .select(isSelected ? null : t.id),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Cart list
// ---------------------------------------------------------------------------

class _CartList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(newOrderCartProvider);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    if (items.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.shopping_cart_outlined,
              size: 48,
              color: colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
            ),
            const SizedBox(height: 8),
            Text(
              'Add items to start',
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: items.length,
      separatorBuilder: (_, _) => const Divider(height: 1, indent: 16),
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          dense: true,
          title: Text(
            item.productId, // will be replaced once product name resolution
            style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            '\u20B9${item.price.toStringAsFixed(2)} each',
            style: textTheme.bodySmall,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.remove_circle_outline, size: 20),
                onPressed: () => ref
                    .read(newOrderCartProvider.notifier)
                    .updateQuantity(item.productId, item.quantity - 1),
                visualDensity: VisualDensity.compact,
              ),
              Text(
                '${item.quantity}',
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add_circle_outline, size: 20),
                onPressed: () => ref
                    .read(newOrderCartProvider.notifier)
                    .updateQuantity(item.productId, item.quantity + 1),
                visualDensity: VisualDensity.compact,
              ),
              const SizedBox(width: 4),
              Text(
                '\u20B9${(item.price * item.quantity).toStringAsFixed(2)}',
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Footer: totals + create button
// ---------------------------------------------------------------------------

class _OrderFooter extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(newOrderCartProvider);
    final createOp = ref.watch(createOrderOperationProvider);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final subtotal = items.fold<double>(0, (s, i) => s + i.price * i.quantity);
    final itemCount = items.fold<int>(0, (s, i) => s + i.quantity);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        border: Border(
          top: BorderSide(color: colorScheme.outlineVariant, width: 0.5),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$itemCount items',
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              Text(
                '\u20B9${subtotal.toStringAsFixed(2)}',
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            height: 44,
            child: FilledButton.icon(
              onPressed: items.isEmpty || createOp.isLoading
                  ? null
                  : () async {
                      final success = await ref
                          .read(createOrderOperationProvider.notifier)
                          .createOrder();
                      if (success && context.mounted) {
                        Navigator.of(context).pop(true); // -> orders list
                      }
                    },
              icon: createOp.isLoading
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(Icons.check),
              label: const Text('Create Order'),
            ),
          ),

          // Error display
          if (createOp.hasError) ...[
            const SizedBox(height: 8),
            Text(
              createOp.error.toString(),
              style: textTheme.bodySmall?.copyWith(color: colorScheme.error),
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }
}
