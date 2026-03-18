import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/database/app_database.dart';
import '../../../../init_dependencies.dart';
import '../../model/store.dart';
import '../../viewmodel/store_viewmodel.dart';

class StoreSelector extends ConsumerStatefulWidget {
  const StoreSelector({super.key});

  @override
  ConsumerState<StoreSelector> createState() => _StoreSelectorState();
}

class _StoreSelectorState extends ConsumerState<StoreSelector> {
  String? storeId;

  @override
  void initState() {
    super.initState();
    _initStore();
  }

  Future<void> _initStore() async {
    final db = serviceLocator<AppDatabase>();
    final user = await db.getLoggedInUser();
    if (user != null && mounted) {
      setState(() => storeId = user.storeId);
      // Populate the selectedStoreProvider with the employee's store
      ref.read(selectedStoreProvider.notifier).select(
            Store(
              id: user.storeId,
              name: 'Active Terminal',
              ownerId: '',
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    
    if (storeId == null) {
      return const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2));
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: colorScheme.outlineVariant, width: 0.5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.store_outlined,
            size: 16,
            color: colorScheme.primary,
          ),
          const SizedBox(width: 8),
          const Text('Active Terminal'),
        ],
      ),
    );
  }
}

