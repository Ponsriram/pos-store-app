// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KitchenOrderTicket _$KitchenOrderTicketFromJson(Map<String, dynamic> json) =>
    _KitchenOrderTicket(
      id: json['id'] as String,
      orderId: json['order_id'] as String,
      storeId: json['store_id'] as String,
      kotNumber: (json['kot_number'] as num?)?.toInt() ?? 0,
      kitchenSection: json['kitchen_section'] as String?,
      status: json['status'] as String? ?? 'pending',
      reprintCount: (json['reprint_count'] as num?)?.toInt() ?? 0,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => KotItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$KitchenOrderTicketToJson(_KitchenOrderTicket instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'store_id': instance.storeId,
      'kot_number': instance.kotNumber,
      'kitchen_section': instance.kitchenSection,
      'status': instance.status,
      'reprint_count': instance.reprintCount,
      'items': instance.items,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_KotItem _$KotItemFromJson(Map<String, dynamic> json) => _KotItem(
  id: json['id'] as String,
  kotId: json['kot_id'] as String,
  orderItemId: json['order_item_id'] as String,
  productName: json['product_name'] as String,
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$KotItemToJson(_KotItem instance) => <String, dynamic>{
  'id': instance.id,
  'kot_id': instance.kotId,
  'order_item_id': instance.orderItemId,
  'product_name': instance.productName,
  'quantity': instance.quantity,
  'notes': instance.notes,
};

_KotStatusUpdate _$KotStatusUpdateFromJson(Map<String, dynamic> json) =>
    _KotStatusUpdate(status: json['status'] as String);

Map<String, dynamic> _$KotStatusUpdateToJson(_KotStatusUpdate instance) =>
    <String, dynamic>{'status': instance.status};
