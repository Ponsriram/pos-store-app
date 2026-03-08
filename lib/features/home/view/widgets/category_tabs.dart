import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../viewmodel/home_viewmodel.dart';

class CategoryTabs extends ConsumerWidget {
  const CategoryTabs({super.key});

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
              _CategoryChip(
                label: 'All',
                isSelected: selectedId == null,
                onTap: () =>
                    ref.read(selectedCategoryIdProvider.notifier).select(null),
              ),
              ...categories.map(
                (cat) => _CategoryChip(
                  label: cat.name,
                  isSelected: selectedId == cat.id,
                  onTap: () => ref
                      .read(selectedCategoryIdProvider.notifier)
                      .select(cat.id),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _CategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _CategoryChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text(label),
        selected: isSelected,
        onSelected: (_) => onTap(),
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
