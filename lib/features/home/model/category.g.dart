// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: json['id'] as String,
  storeId: json['store_id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  sortOrder: (json['sort_order'] as num?)?.toInt() ?? 0,
  isActive: json['is_active'] as bool? ?? true,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'name': instance.name,
  'description': instance.description,
  'sort_order': instance.sortOrder,
  'is_active': instance.isActive,
  'created_at': instance.createdAt?.toIso8601String(),
};
