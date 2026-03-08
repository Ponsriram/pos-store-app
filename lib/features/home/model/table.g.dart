// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DineInTable _$DineInTableFromJson(Map<String, dynamic> json) => _DineInTable(
  id: json['id'] as String,
  storeId: json['store_id'] as String,
  tableNumber: (json['table_number'] as num).toInt(),
  label: json['label'] as String?,
  capacity: (json['capacity'] as num?)?.toInt() ?? 4,
  status: json['status'] as String? ?? 'available',
  qrCode: json['qr_code'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$DineInTableToJson(_DineInTable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'table_number': instance.tableNumber,
      'label': instance.label,
      'capacity': instance.capacity,
      'status': instance.status,
      'qr_code': instance.qrCode,
      'created_at': instance.createdAt?.toIso8601String(),
    };
