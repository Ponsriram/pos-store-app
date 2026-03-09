import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../home/model/order.dart';
import '../../viewmodel/orders_viewmodel.dart';

/// Full-screen dialog showing order details with actions.
class OrderDetailsPage extends ConsumerStatefulWidget {
  final Order order;

  const OrderDetailsPage({super.key, required this.order});

  @override
  ConsumerState<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends ConsumerState<OrderDetailsPage> {
  late Order _order;

  @override
  void initState() {
    super.initState();
    _order = widget.order;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final ops = ref.watch(ordersPageOperationsProvider);

    final total = _order.grandTotal > 0
        ? _order.grandTotal
        : _order.items.fold<double>(0, (s, i) => s + i.total);
    final dateStr = _order.createdAt != null
        ? DateFormat('dd MMM yyyy, hh:mm a').format(_order.createdAt!)
        : '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Order #${_order.orderNumber}'),
        centerTitle: false,
        actions: [
          if (!_isTerminalState(_order.status)) ...[
            _StatusActionButton(
              label: _nextStatusLabel(_order.status),
              icon: _nextStatusIcon(_order.status),
              color: Colors.green,
              onPressed: ops.isLoading ? null : () => _advanceStatus(),
            ),
            const SizedBox(width: 8),
            _StatusActionButton(
              label: 'Cancel',
              icon: Icons.cancel_outlined,
              color: colorScheme.error,
              onPressed: ops.isLoading ? null : () => _showCancelDialog(),
            ),
            const SizedBox(width: 16),
          ],
        ],
      ),
      body: Row(
        children: [
          // Left: Order items table
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Items',
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: _order.items.isEmpty
                        ? Center(
                            child: Text(
                              'No items in this order',
                              style: textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          )
                        : _buildItemsTable(context),
                  ),
                ],
              ),
            ),
          ),

          // Right: Order summary
          Container(
            width: 320,
            decoration: BoxDecoration(
              color: colorScheme.surface,
              border: Border(
                left: BorderSide(color: colorScheme.outlineVariant, width: 0.5),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Summary',
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Info rows
                  _InfoRow(
                    label: 'Status',
                    child: _StatusBadge(status: _order.status),
                  ),
                  const SizedBox(height: 12),
                  _InfoRow(
                    label: 'Order Type',
                    child: Text(
                      _orderTypeLabel(_order.orderType),
                      style: textTheme.bodyMedium,
                    ),
                  ),
                  if (_order.tableId != null) ...[
                    const SizedBox(height: 12),
                    _InfoRow(
                      label: 'Table',
                      child: Text('Assigned', style: textTheme.bodyMedium),
                    ),
                  ],
                  const SizedBox(height: 12),
                  _InfoRow(
                    label: 'Payment',
                    child: _PaymentBadge(status: _order.paymentStatus),
                  ),
                  const SizedBox(height: 12),
                  _InfoRow(
                    label: 'Created',
                    child: Text(dateStr, style: textTheme.bodySmall),
                  ),

                  if (_order.notes != null && _order.notes!.isNotEmpty) ...[
                    const SizedBox(height: 12),
                    _InfoRow(
                      label: 'Notes',
                      child: Text(_order.notes!, style: textTheme.bodySmall),
                    ),
                  ],

                  const Spacer(),
                  const Divider(),
                  const SizedBox(height: 8),

                  // Totals
                  _SummaryRow(label: 'Subtotal', amount: _order.subtotal),
                  const SizedBox(height: 4),
                  _SummaryRow(label: 'Tax', amount: _order.taxAmount),
                  const SizedBox(height: 4),
                  _SummaryRow(
                    label: 'Service Charge',
                    amount: _order.serviceCharge,
                  ),
                  const SizedBox(height: 4),
                  _SummaryRow(
                    label: 'Discount',
                    amount: -_order.discountAmount,
                  ),
                  const Divider(height: 16),
                  _SummaryRow(label: 'Total', amount: total, isBold: true),
                  const SizedBox(height: 16),

                  // Pay button
                  if (_order.paymentStatus != 'paid' &&
                      !_isTerminalState(_order.status))
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: ops.isLoading
                            ? null
                            : () => _showPaymentDialog(total),
                        icon: const Icon(Icons.payment),
                        label: const Text('Process Payment'),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemsTable(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: DataTable(
        headingRowColor: WidgetStatePropertyAll(
          colorScheme.surfaceContainerLow,
        ),
        columns: const [
          DataColumn(label: Text('#')),
          DataColumn(label: Text('Product')),
          DataColumn(label: Text('Qty'), numeric: true),
          DataColumn(label: Text('Price'), numeric: true),
          DataColumn(label: Text('Tax'), numeric: true),
          DataColumn(label: Text('Total'), numeric: true),
        ],
        rows: _order.items.asMap().entries.map((entry) {
          final i = entry.key + 1;
          final item = entry.value;
          return DataRow(
            cells: [
              DataCell(Text('$i')),
              DataCell(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item.productName,
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (item.notes != null && item.notes!.isNotEmpty)
                      Text(
                        item.notes!,
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                  ],
                ),
              ),
              DataCell(Text('${item.quantity}')),
              DataCell(Text('\u20B9${item.price.toStringAsFixed(2)}')),
              DataCell(Text('\u20B9${item.taxAmount.toStringAsFixed(2)}')),
              DataCell(
                Text(
                  '\u20B9${item.total.toStringAsFixed(2)}',
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Future<void> _advanceStatus() async {
    final nextStatus = _nextStatus(_order.status);
    if (nextStatus == null) return;
    final success = await ref
        .read(ordersPageOperationsProvider.notifier)
        .updateStatus(_order.id, nextStatus);
    if (success && mounted) {
      setState(() {
        _order = _order.copyWith(status: nextStatus);
      });
    }
  }

  void _showCancelDialog() {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Cancel Order'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: 'Reason for cancellation',
            border: OutlineInputBorder(),
          ),
          maxLines: 3,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Back'),
          ),
          FilledButton(
            onPressed: () async {
              final reason = controller.text.trim();
              if (reason.isEmpty) return;
              Navigator.pop(ctx);
              final success = await ref
                  .read(ordersPageOperationsProvider.notifier)
                  .cancelOrder(_order.id, reason);
              if (success && mounted) {
                setState(() {
                  _order = _order.copyWith(status: 'cancelled');
                });
              }
            },
            child: const Text('Cancel Order'),
          ),
        ],
      ),
    );
  }

  void _showPaymentDialog(double total) {
    String method = 'cash';
    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDialogState) => AlertDialog(
          title: const Text('Process Payment'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Total: \u20B9${total.toStringAsFixed(2)}',
                style: Theme.of(ctx).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              SegmentedButton<String>(
                segments: const [
                  ButtonSegment(value: 'cash', label: Text('Cash')),
                  ButtonSegment(value: 'card', label: Text('Card')),
                  ButtonSegment(value: 'upi', label: Text('UPI')),
                ],
                selected: {method},
                onSelectionChanged: (val) {
                  setDialogState(() => method = val.first);
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () async {
                Navigator.pop(ctx);
                final success = await ref
                    .read(ordersPageOperationsProvider.notifier)
                    .processPayment(
                      orderId: _order.id,
                      paymentMethod: method,
                      amount: total,
                    );
                if (success && mounted) {
                  setState(() {
                    _order = _order.copyWith(paymentStatus: 'paid');
                  });
                }
              },
              child: const Text('Pay'),
            ),
          ],
        ),
      ),
    );
  }

  // ---- Helpers ----

  bool _isTerminalState(String status) =>
      status == 'completed' || status == 'cancelled';

  String? _nextStatus(String status) {
    return switch (status) {
      'pending' => 'confirmed',
      'confirmed' => 'preparing',
      'preparing' || 'in_kitchen' => 'ready',
      'ready' => 'served',
      'served' || 'delivered' => 'completed',
      _ => null,
    };
  }

  String _nextStatusLabel(String status) {
    final next = _nextStatus(status);
    return switch (next) {
      'confirmed' => 'Confirm',
      'preparing' => 'Start Prep',
      'ready' => 'Mark Ready',
      'served' => 'Serve',
      'completed' => 'Complete',
      _ => 'Advance',
    };
  }

  IconData _nextStatusIcon(String status) {
    return switch (status) {
      'pending' => Icons.check_circle_outline,
      'confirmed' => Icons.soup_kitchen_outlined,
      'preparing' || 'in_kitchen' => Icons.done_all,
      'ready' => Icons.room_service_outlined,
      'served' || 'delivered' => Icons.task_alt,
      _ => Icons.arrow_forward,
    };
  }

  String _orderTypeLabel(String type) {
    return switch (type) {
      'dine_in' => 'Dine In',
      'takeaway' || 'take_away' => 'Takeaway',
      'delivery' => 'Delivery',
      _ => type,
    };
  }
}

// ---------------------------------------------------------------------------
// Small reusable widgets
// ---------------------------------------------------------------------------

class _StatusActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback? onPressed;

  const _StatusActionButton({
    required this.label,
    required this.icon,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonalIcon(
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      label: Text(label),
      style: FilledButton.styleFrom(
        foregroundColor: color,
        backgroundColor: color.withValues(alpha: 0.12),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final Widget child;

  const _InfoRow({required this.label, required this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        Expanded(child: child),
      ],
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final String status;

  const _StatusBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    final color = _statusColor(status, Theme.of(context).colorScheme);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        _statusLabel(status),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  String _statusLabel(String s) => switch (s) {
    'pending' => 'Pending',
    'confirmed' => 'Confirmed',
    'preparing' || 'in_kitchen' => 'Preparing',
    'ready' => 'Ready',
    'served' => 'Served',
    'delivered' => 'Delivered',
    'completed' => 'Completed',
    'cancelled' => 'Cancelled',
    _ => s,
  };

  Color _statusColor(String s, ColorScheme cs) => switch (s) {
    'pending' => Colors.orange,
    'confirmed' => Colors.blue,
    'preparing' || 'in_kitchen' => Colors.amber.shade700,
    'ready' => Colors.green,
    'served' || 'delivered' => Colors.teal,
    'completed' => Colors.grey,
    'cancelled' => cs.error,
    _ => cs.onSurfaceVariant,
  };
}

class _PaymentBadge extends StatelessWidget {
  final String status;

  const _PaymentBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    final color = switch (status) {
      'unpaid' => Colors.orange,
      'paid' => Colors.green,
      'partial' => Colors.blue,
      'refunded' => Theme.of(context).colorScheme.error,
      _ => Theme.of(context).colorScheme.onSurfaceVariant,
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        status[0].toUpperCase() + status.substring(1),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String label;
  final double amount;
  final bool isBold;

  const _SummaryRow({
    required this.label,
    required this.amount,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    final style = isBold
        ? Theme.of(
            context,
          ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)
        : Theme.of(context).textTheme.bodyMedium;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: style),
        Text('\u20B9${amount.toStringAsFixed(2)}', style: style),
      ],
    );
  }
}
