// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Store _$StoreFromJson(Map<String, dynamic> json) => _Store(
  id: json['id'] as String,
  ownerId: json['owner_id'] as String,
  name: json['name'] as String,
  address: json['location'] as String?,
  city: json['city'] as String?,
  state: json['state'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  outletType: json['outlet_type'] as String?,
  currency: json['currency'] as String? ?? 'INR',
  timezone: json['timezone'] as String? ?? 'Asia/Kolkata',
  taxInclusive: json['tax_inclusive'] as bool? ?? false,
  chainId: json['chain_id'] as String?,
  tableCount: (json['table_count'] as num?)?.toInt() ?? 0,
  isActive: json['is_active'] as bool? ?? true,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$StoreToJson(_Store instance) => <String, dynamic>{
  'id': instance.id,
  'owner_id': instance.ownerId,
  'name': instance.name,
  'location': instance.address,
  'city': instance.city,
  'state': instance.state,
  'phone': instance.phone,
  'email': instance.email,
  'outlet_type': instance.outletType,
  'currency': instance.currency,
  'timezone': instance.timezone,
  'tax_inclusive': instance.taxInclusive,
  'chain_id': instance.chainId,
  'table_count': instance.tableCount,
  'is_active': instance.isActive,
  'created_at': instance.createdAt?.toIso8601String(),
};
