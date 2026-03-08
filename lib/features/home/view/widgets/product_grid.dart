import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/product.dart';
import '../../viewmodel/home_viewmodel.dart';

class ProductGrid extends ConsumerWidget {
  const ProductGrid({super.key});

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
            maxCrossAxisExtent: 220,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.78,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) =>
              _ProductCard(product: products[index]),
        );
      },
    );
  }
}

class _ProductCard extends ConsumerWidget {
  final Product product;

  const _ProductCard({required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 0,
      color: colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: colorScheme.outlineVariant, width: 0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Placeholder image
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
                  size: 40,
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Name
            Text(
              product.name,
              style: textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            if (product.description != null &&
                product.description!.isNotEmpty) ...[
              const SizedBox(height: 2),
              Text(
                product.description!,
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            const Spacer(),
            // Price row + add button
            Row(
              children: [
                Text(
                  '₹${product.price.toStringAsFixed(2)}',
                  style: textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.primary,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 32,
                  child: FilledButton.tonal(
                    onPressed: () {
                      ref.read(cartProvider.notifier).addItem(product);
                    },
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Icon(Icons.add, size: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
