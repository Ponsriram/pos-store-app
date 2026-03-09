// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductCreate _$ProductCreateFromJson(Map<String, dynamic> json) =>
    _ProductCreate(
      storeId: json['store_id'] as String,
      categoryId: json['category_id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      price: (json['price'] as num).toDouble(),
      taxPercent: (json['tax_percent'] as num?)?.toDouble() ?? 0,
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$ProductCreateToJson(_ProductCreate instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'category_id': instance.categoryId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'tax_percent': instance.taxPercent,
      'is_active': instance.isActive,
    };

_ProductUpdate _$ProductUpdateFromJson(Map<String, dynamic> json) =>
    _ProductUpdate(
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      taxPercent: (json['tax_percent'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool?,
      categoryId: json['category_id'] as String?,
    );

Map<String, dynamic> _$ProductUpdateToJson(_ProductUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'tax_percent': instance.taxPercent,
      'is_active': instance.isActive,
      'category_id': instance.categoryId,
    };

_CategoryCreate _$CategoryCreateFromJson(Map<String, dynamic> json) =>
    _CategoryCreate(
      storeId: json['store_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CategoryCreateToJson(_CategoryCreate instance) =>
    <String, dynamic>{'store_id': instance.storeId, 'name': instance.name};
