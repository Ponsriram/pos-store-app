import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../home/model/order.dart';

/// A card tile representing a single order in the orders grid.
class OrderCard extends StatelessWidget {
  final Order order;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;

  const OrderCard({
    super.key,
    required this.order,
    this.onTap,
    this.onDoubleTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final effectiveStatus = _effectiveStatus(order.status, order.paymentStatus);
    final statusColor = _statusColor(
      effectiveStatus,
      order.paymentStatus,
      colorScheme,
    );
    final dateStr = order.createdAt != null
        ? DateFormat('dd MMM, hh:mm a').format(order.createdAt!.toLocal())
        : '';

    final total = order.grandTotal > 0
        ? order.grandTotal
        : order.items.fold<double>(0, (s, i) => s + i.total);

    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(12),
          border: Border(left: BorderSide(color: statusColor, width: 4)),
          boxShadow: [
            BoxShadow(
              color: colorScheme.shadow.withValues(alpha: 0.05),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Order number + status badge
            Row(
              children: [
                Expanded(
                  child: Text(
                    '#${order.orderNumber}',
                    style: textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _statusLabel(effectiveStatus, order.paymentStatus),
                    style: textTheme.labelSmall?.copyWith(
                      color: statusColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Order type badge
            Row(
              children: [
                Icon(
                  _orderTypeIcon(order.orderType),
                  size: 14,
                  color: colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 4),
                Text(
                  _orderTypeLabel(order.orderType),
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                if (order.tableNumber != null) ...[
                  const SizedBox(width: 8),
                  Icon(
                    Icons.table_restaurant_outlined,
                    size: 14,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 2),
                  Text(
                    'Table',
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ],
            ),
            const Spacer(),

            // Items count + date
            Row(
              children: [
                Icon(
                  Icons.receipt_outlined,
                  size: 14,
                  color: colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 4),
                Text(
                  '${order.items.length} items',
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),

            // Date
            Text(
              dateStr,
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                fontSize: 11,
              ),
            ),
            const SizedBox(height: 8),

            // Total + payment status
            Row(
              children: [
                Expanded(
                  child: Text(
                    '\u20B9${total.toStringAsFixed(2)}',
                    style: textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: _paymentColor(
                      _effectivePaymentStatus(
                        order.status,
                        order.paymentStatus,
                      ),
                      colorScheme,
                    ).withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    _paymentLabel(
                      _effectivePaymentStatus(
                        order.status,
                        order.paymentStatus,
                      ),
                    ),
                    style: textTheme.labelSmall?.copyWith(
                      color: _paymentColor(
                        _effectivePaymentStatus(
                          order.status,
                          order.paymentStatus,
                        ),
                        colorScheme,
                      ),
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // ---- helpers ----

  String _effectiveStatus(String status, String paymentStatus) {
    final s = status.toLowerCase();
    final p = paymentStatus.toLowerCase();

    if (s == 'cancelled') return status;

    // A settled order should not continue showing as "Ready".
    if (s == 'ready' && p == 'completed') {
      return 'completed';
    }

    return status;
  }

  String _statusLabel(String status, String paymentStatus) {
    if (status.toLowerCase() == 'paid') return 'Completed';
    return switch (status) {
      'open' => 'Open',
      'sent_to_kitchen' => 'In Kitchen',
      'preparing' => 'Preparing',
      'ready' => 'Ready',
      'served' => 'Served',
      'handed_over' => 'Given to Customer',
      'out_for_delivery' => 'Out for Delivery',
      'delivered' => 'Delivered',
      'completed' => 'Completed',
      'paid' => 'Completed',
      'cancelled' => 'Cancelled',
      _ => status,
    };
  }

  Color _statusColor(String status, String paymentStatus, ColorScheme cs) {
    if (status.toLowerCase() == 'paid') return Colors.teal;
    return switch (status) {
      'open' => Colors.blue,
      'sent_to_kitchen' => Colors.orange,
      'preparing' => Colors.amber.shade700,
      'ready' => Colors.green,
      'served' || 'handed_over' || 'delivered' => Colors.teal,
      'out_for_delivery' => Colors.deepOrange,
      'completed' => Colors.teal,
      'paid' => Colors.teal,
      'cancelled' => cs.error,
      _ => cs.onSurfaceVariant,
    };
  }

  IconData _orderTypeIcon(String type) {
    return switch (type) {
      'dine_in' => Icons.restaurant,
      'takeaway' || 'take_away' => Icons.takeout_dining,
      'delivery' => Icons.delivery_dining,
      _ => Icons.receipt,
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

  String _paymentLabel(String status) {
    return switch (status) {
      'cancelled' => 'Cancelled',
      'pending' => 'Pending',
      'completed' => 'Paid',
      'partial' => 'Partial',
      'refunded' => 'Refunded',
      _ => status,
    };
  }

  Color _paymentColor(String status, ColorScheme cs) {
    return switch (status) {
      'cancelled' => cs.error,
      'pending' => Colors.orange,
      'completed' => Colors.green,
      'partial' => Colors.blue,
      'refunded' => cs.error,
      _ => cs.onSurfaceVariant,
    };
  }

  String _effectivePaymentStatus(String orderStatus, String paymentStatus) {
    if (orderStatus.toLowerCase() == 'cancelled' &&
        paymentStatus.toLowerCase() == 'pending') {
      return 'cancelled';
    }
    return paymentStatus;
  }
}
