import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../home/viewmodel/store_viewmodel.dart';
import '../../model/shift_models.dart';
import '../../viewmodel/employee_viewmodel.dart';
import '../../viewmodel/shift_viewmodel.dart';

class ShiftsPage extends ConsumerStatefulWidget {
  const ShiftsPage({super.key});

  @override
  ConsumerState<ShiftsPage> createState() => _ShiftsPageState();
}

class _ShiftsPageState extends ConsumerState<ShiftsPage> {
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
                'Shift Management',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Spacer(),
              FilledButton.icon(
                onPressed: () => _showOpenShiftDialog(context),
                icon: const Icon(Icons.play_arrow),
                label: const Text('Open Shift'),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Shift table
          const Expanded(child: _ShiftDataTableView()),
        ],
      ),
    );
  }

  void _showOpenShiftDialog(BuildContext context) {
    showDialog(context: context, builder: (_) => const _OpenShiftDialog());
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Shift DataTable View
// ═══════════════════════════════════════════════════════════════════════════

class _ShiftDataTableView extends ConsumerWidget {
  const _ShiftDataTableView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shiftsAsync = ref.watch(shiftListProvider);

    return shiftsAsync.when(
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
              onPressed: () => ref.read(shiftListProvider.notifier).refresh(),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
      data: (shifts) {
        if (shifts.isEmpty) {
          return const Center(child: Text('No shifts found.'));
        }
        return _ShiftDataTable(shifts: shifts);
      },
    );
  }
}

class _ShiftDataTable extends ConsumerWidget {
  final List<Shift> shifts;
  const _ShiftDataTable({required this.shifts});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final dateFmt = DateFormat('MMM dd, yyyy hh:mm a');

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
              DataColumn(label: Text('Shift ID')),
              DataColumn(label: Text('Employee')),
              DataColumn(label: Text('Start Time')),
              DataColumn(label: Text('End Time')),
              DataColumn(label: Text('Total Sales'), numeric: true),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Actions')),
            ],
            rows: shifts.map((shift) {
              final isOpen = shift.status.toUpperCase() == 'OPEN';
              return DataRow(
                cells: [
                  DataCell(
                    Text(
                      shift.id.length > 8 ? shift.id.substring(0, 8) : shift.id,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  DataCell(
                    Text(
                      shift.employeeId.length > 8
                          ? shift.employeeId.substring(0, 8)
                          : shift.employeeId,
                    ),
                  ),
                  DataCell(
                    Text(
                      shift.startedAt != null
                          ? dateFmt.format(shift.startedAt!)
                          : '—',
                    ),
                  ),
                  DataCell(
                    Text(
                      shift.endedAt != null
                          ? dateFmt.format(shift.endedAt!)
                          : '—',
                    ),
                  ),
                  DataCell(Text(shift.totalSales.toStringAsFixed(2))),
                  DataCell(
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: isOpen
                            ? Colors.green.withValues(alpha: 0.12)
                            : Colors.grey.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        shift.status.toUpperCase(),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: isOpen ? Colors.green : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  DataCell(
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.visibility_outlined, size: 20),
                          tooltip: 'View Details',
                          onPressed: () => _showShiftDetails(context, shift),
                        ),
                        if (isOpen)
                          IconButton(
                            icon: const Icon(
                              Icons.stop_circle_outlined,
                              size: 20,
                            ),
                            tooltip: 'Close Shift',
                            onPressed: () =>
                                _showCloseShiftDialog(context, shift),
                          ),
                      ],
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

  void _showShiftDetails(BuildContext context, Shift shift) {
    showDialog(
      context: context,
      builder: (_) => _ShiftDetailsDialog(shift: shift),
    );
  }

  void _showCloseShiftDialog(BuildContext context, Shift shift) {
    showDialog(
      context: context,
      builder: (_) => _CloseShiftDialog(shift: shift),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Shift Details Dialog
// ═══════════════════════════════════════════════════════════════════════════

class _ShiftDetailsDialog extends ConsumerWidget {
  final Shift shift;
  const _ShiftDetailsDialog({required this.shift});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateFmt = DateFormat('MMM dd, yyyy hh:mm a');
    final isOpen = shift.status.toUpperCase() == 'OPEN';

    return AlertDialog(
      title: Text(
        'Shift Details — ${shift.id.length > 8 ? shift.id.substring(0, 8) : shift.id}',
      ),
      content: SizedBox(
        width: 500,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _detailRow('Shift ID', shift.id),
              _detailRow('Employee ID', shift.employeeId),
              _detailRow(
                'Start Time',
                shift.startedAt != null
                    ? dateFmt.format(shift.startedAt!)
                    : '—',
              ),
              _detailRow(
                'End Time',
                shift.endedAt != null ? dateFmt.format(shift.endedAt!) : '—',
              ),
              _detailRow('Status', shift.status.toUpperCase()),
              _detailRow('Opening Cash', shift.openingCash.toStringAsFixed(2)),
              _detailRow(
                'Closing Cash',
                shift.closingCash?.toStringAsFixed(2) ?? '—',
              ),
              _detailRow('Total Sales', shift.totalSales.toStringAsFixed(2)),
              _detailRow('Total Orders', shift.totalOrders.toString()),
              if (shift.notes != null && shift.notes!.isNotEmpty)
                _detailRow('Notes', shift.notes!),
              if (shift.paymentSummaries.isNotEmpty) ...[
                const SizedBox(height: 16),
                Text(
                  'Payment Summaries',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 8),
                ...shift.paymentSummaries.map(
                  (ps) => Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      '${ps.paymentMethod}: Expected ${ps.expectedAmount.toStringAsFixed(2)} / Actual ${ps.actualAmount.toStringAsFixed(2)} (Var: ${ps.variance.toStringAsFixed(2)})',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
      actions: [
        if (isOpen)
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pop();
              showDialog(
                context: context,
                builder: (_) => _CloseShiftDialog(shift: shift),
              );
            },
            child: const Text('Close Shift'),
          ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Done'),
        ),
      ],
    );
  }

  Widget _detailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Open Shift Dialog
// ═══════════════════════════════════════════════════════════════════════════

class _OpenShiftDialog extends ConsumerStatefulWidget {
  const _OpenShiftDialog();

  @override
  ConsumerState<_OpenShiftDialog> createState() => _OpenShiftDialogState();
}

class _OpenShiftDialogState extends ConsumerState<_OpenShiftDialog> {
  final _formKey = GlobalKey<FormState>();
  final _openingCashCtrl = TextEditingController(text: '0');
  final _notesCtrl = TextEditingController();
  String? _selectedEmployeeId;

  @override
  void dispose() {
    _openingCashCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final openState = ref.watch(openShiftActionProvider);
    final employeesAsync = ref.watch(employeeListProvider);

    return AlertDialog(
      title: const Text('Open Shift'),
      content: SizedBox(
        width: 450,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Employee dropdown
                employeesAsync.when(
                  loading: () => const LinearProgressIndicator(),
                  error: (e, _) => Text('Failed to load employees: $e'),
                  data: (employees) {
                    final active = employees.where((e) => e.isActive).toList();
                    return DropdownButtonFormField<String>(
                      value: _selectedEmployeeId,
                      decoration: const InputDecoration(
                        labelText: 'Employee *',
                        border: OutlineInputBorder(),
                      ),
                      items: active
                          .map(
                            (e) => DropdownMenuItem(
                              value: e.id,
                              child: Text('${e.name} (${e.role})'),
                            ),
                          )
                          .toList(),
                      onChanged: (v) => setState(() => _selectedEmployeeId = v),
                      validator: (v) =>
                          (v == null || v.isEmpty) ? 'Required' : null,
                    );
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _openingCashCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Opening Cash',
                    border: OutlineInputBorder(),
                    prefixText: '\$ ',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) return 'Required';
                    if (double.tryParse(v) == null) return 'Invalid number';
                    return null;
                  },
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
                if (openState is AsyncError) ...[
                  const SizedBox(height: 12),
                  Text(
                    openState.error.toString(),
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
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: openState is AsyncLoading ? null : _submit,
          child: openState is AsyncLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('Open Shift'),
        ),
      ],
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    final store = ref.read(selectedStoreProvider);
    if (store == null) return;

    final shiftOpen = ShiftOpen(
      storeId: store.id,
      employeeId: _selectedEmployeeId!,
      openingCash: double.parse(_openingCashCtrl.text.trim()),
      notes: _notesCtrl.text.trim().isEmpty ? null : _notesCtrl.text.trim(),
    );

    final success = await ref
        .read(openShiftActionProvider.notifier)
        .openShift(shiftOpen);
    if (success && mounted) {
      Navigator.of(context).pop();
    }
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Close Shift Dialog
// ═══════════════════════════════════════════════════════════════════════════

class _CloseShiftDialog extends ConsumerStatefulWidget {
  final Shift shift;
  const _CloseShiftDialog({required this.shift});

  @override
  ConsumerState<_CloseShiftDialog> createState() => _CloseShiftDialogState();
}

class _CloseShiftDialogState extends ConsumerState<_CloseShiftDialog> {
  final _formKey = GlobalKey<FormState>();
  final _closingCashCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();

  @override
  void dispose() {
    _closingCashCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final closeState = ref.watch(closeShiftActionProvider);

    return AlertDialog(
      title: Text(
        'Close Shift — ${widget.shift.id.length > 8 ? widget.shift.id.substring(0, 8) : widget.shift.id}',
      ),
      content: SizedBox(
        width: 450,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _closingCashCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Closing Cash *',
                    border: OutlineInputBorder(),
                    prefixText: '\$ ',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) return 'Required';
                    if (double.tryParse(v) == null) return 'Invalid number';
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _notesCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Notes',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
                if (closeState is AsyncError) ...[
                  const SizedBox(height: 12),
                  Text(
                    closeState.error.toString(),
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
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: closeState is AsyncLoading ? null : _submit,
          child: closeState is AsyncLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('Close Shift'),
        ),
      ],
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    final shiftClose = ShiftClose(
      closingCash: double.parse(_closingCashCtrl.text.trim()),
      notes: _notesCtrl.text.trim().isEmpty ? null : _notesCtrl.text.trim(),
    );

    final success = await ref
        .read(closeShiftActionProvider.notifier)
        .closeShift(shiftId: widget.shift.id, shiftClose: shiftClose);
    if (success && mounted) {
      Navigator.of(context).pop();
    }
  }
}
