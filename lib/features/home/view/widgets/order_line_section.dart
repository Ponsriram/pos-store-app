import 'package:flutter/material.dart';

import 'category_tabs.dart';
import 'order_card_list.dart';
import 'product_grid.dart';
import 'store_selector.dart';

class OrderLineSection extends StatelessWidget {
  const OrderLineSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Top bar: title + store selector
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Row(
            children: [
              Text(
                'Order Line',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const StoreSelector(),
            ],
          ),
        ),
        const SizedBox(height: 16),

        // Active orders horizontal list
        const OrderCardList(),
        const SizedBox(height: 16),

        // Divider
        Divider(height: 1, color: colorScheme.outlineVariant),
        const SizedBox(height: 12),

        // Category tabs
        const CategoryTabs(),
        const SizedBox(height: 12),

        // Product grid
        const Expanded(child: ProductGrid()),
      ],
    );
  }
}
