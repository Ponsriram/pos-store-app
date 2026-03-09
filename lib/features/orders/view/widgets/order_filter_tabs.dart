import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../viewmodel/orders_viewmodel.dart';

/// Filter tabs: All Orders | Dine In | Takeaway | Delivery
class OrderFilterTabs extends ConsumerWidget {
  const OrderFilterTabs({super.key});

  static const _filters = <String?, String>{
    null: 'All Orders',
    'dine_in': 'Dine In',
    'takeaway': 'Takeaway',
    'delivery': 'Delivery',
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(orderTypeFilterProvider);

    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: _filters.entries.map((entry) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: FilterChip(
              label: Text(entry.value),
              selected: selected == entry.key,
              onSelected: (_) =>
                  ref.read(orderTypeFilterProvider.notifier).select(entry.key),
              selectedColor: Theme.of(context).colorScheme.primaryContainer,
              checkmarkColor: Theme.of(context).colorScheme.onPrimaryContainer,
              labelStyle: TextStyle(
                color: selected == entry.key
                    ? Theme.of(context).colorScheme.onPrimaryContainer
                    : Theme.of(context).colorScheme.onSurfaceVariant,
                fontWeight: selected == entry.key
                    ? FontWeight.w600
                    : FontWeight.normal,
              ),
              side: BorderSide(
                color: selected == entry.key
                    ? Colors.transparent
                    : Theme.of(context).colorScheme.outlineVariant,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
