// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreCreate _$StoreCreateFromJson(Map<String, dynamic> json) => _StoreCreate(
  name: json['name'] as String,
  location: json['location'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  timezone: json['timezone'] as String? ?? 'Asia/Kolkata',
  currency: json['currency'] as String? ?? 'INR',
  taxInclusive: json['tax_inclusive'] as bool? ?? false,
);

Map<String, dynamic> _$StoreCreateToJson(_StoreCreate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'phone': instance.phone,
      'email': instance.email,
      'timezone': instance.timezone,
      'currency': instance.currency,
      'tax_inclusive': instance.taxInclusive,
    };

_POSTerminalCreate _$POSTerminalCreateFromJson(Map<String, dynamic> json) =>
    _POSTerminalCreate(
      storeId: json['store_id'] as String,
      deviceName: json['device_name'] as String,
      deviceIdentifier: json['device_identifier'] as String,
    );

Map<String, dynamic> _$POSTerminalCreateToJson(_POSTerminalCreate instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'device_name': instance.deviceName,
      'device_identifier': instance.deviceIdentifier,
    };

_POSTerminalResponse _$POSTerminalResponseFromJson(Map<String, dynamic> json) =>
    _POSTerminalResponse(
      id: json['id'] as String,
      storeId: json['store_id'] as String,
      deviceName: json['device_name'] as String,
      deviceIdentifier: json['device_identifier'] as String,
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$POSTerminalResponseToJson(
  _POSTerminalResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'device_name': instance.deviceName,
  'device_identifier': instance.deviceIdentifier,
  'is_active': instance.isActive,
  'created_at': instance.createdAt?.toIso8601String(),
};

_DineInTableCreate _$DineInTableCreateFromJson(Map<String, dynamic> json) =>
    _DineInTableCreate(
      storeId: json['store_id'] as String,
      tableNumber: (json['table_number'] as num).toInt(),
      label: json['label'] as String?,
      capacity: (json['capacity'] as num?)?.toInt() ?? 4,
      status: json['status'] as String? ?? 'available',
      section: json['section'] as String?,
    );

Map<String, dynamic> _$DineInTableCreateToJson(_DineInTableCreate instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'table_number': instance.tableNumber,
      'label': instance.label,
      'capacity': instance.capacity,
      'status': instance.status,
      'section': instance.section,
    };

_DineInTableResponse _$DineInTableResponseFromJson(Map<String, dynamic> json) =>
    _DineInTableResponse(
      id: json['id'] as String,
      storeId: json['store_id'] as String,
      tableNumber: (json['table_number'] as num).toInt(),
      label: json['label'] as String?,
      capacity: (json['capacity'] as num?)?.toInt() ?? 4,
      status: json['status'] as String? ?? 'available',
      section: json['section'] as String?,
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$DineInTableResponseToJson(
  _DineInTableResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'table_number': instance.tableNumber,
  'label': instance.label,
  'capacity': instance.capacity,
  'status': instance.status,
  'section': instance.section,
  'is_active': instance.isActive,
  'created_at': instance.createdAt?.toIso8601String(),
};
