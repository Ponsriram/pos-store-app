import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../viewmodel/store_viewmodel.dart';

class StoreSelector extends ConsumerWidget {
  const StoreSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storesAsync = ref.watch(storeListProvider);
    final selectedStore = ref.watch(selectedStoreProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return storesAsync.when(
      loading: () =>
          const SizedBox(width: 200, child: LinearProgressIndicator()),
      error: (e, _) => TextButton.icon(
        onPressed: () => ref.invalidate(storeListProvider),
        icon: Icon(Icons.error_outline, color: colorScheme.error, size: 16),
        label: Text('Retry', style: TextStyle(color: colorScheme.error)),
      ),
      data: (stores) {
        if (stores.isEmpty) {
          return Text(
            'No stores found',
            style: Theme.of(context).textTheme.bodySmall,
          );
        }

        // Auto-select first store if none selected
        if (selectedStore == null && stores.isNotEmpty) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(selectedStoreProvider.notifier).select(stores.first);
          });
        }

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: colorScheme.outlineVariant, width: 0.5),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedStore?.id,
              isDense: true,
              icon: const Icon(Icons.keyboard_arrow_down, size: 20),
              items: stores
                  .map(
                    (s) => DropdownMenuItem(
                      value: s.id,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.store_outlined,
                            size: 16,
                            color: colorScheme.primary,
                          ),
                          const SizedBox(width: 8),
                          Text(s.name),
                        ],
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (id) {
                if (id != null) {
                  final store = stores.firstWhere((s) => s.id == id);
                  ref.read(selectedStoreProvider.notifier).select(store);
                }
              },
            ),
          ),
        );
      },
    );
  }
}
