// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InventoryItem _$InventoryItemFromJson(Map<String, dynamic> json) =>
    _InventoryItem(
      id: json['id'] as String,
      storeId: json['store_id'] as String,
      name: json['name'] as String,
      sku: json['sku'] as String?,
      category: json['category'] as String?,
      unitId: json['unit_id'] as String,
      minStock: (json['min_stock'] as num?)?.toDouble() ?? 0,
      maxStock: (json['max_stock'] as num?)?.toDouble(),
      reorderLevel: (json['reorder_level'] as num?)?.toDouble(),
      reorderQuantity: (json['reorder_quantity'] as num?)?.toDouble(),
      lastPurchasePrice: (json['last_purchase_price'] as num?)?.toDouble(),
      averageCost: (json['average_cost'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$InventoryItemToJson(_InventoryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'name': instance.name,
      'sku': instance.sku,
      'category': instance.category,
      'unit_id': instance.unitId,
      'min_stock': instance.minStock,
      'max_stock': instance.maxStock,
      'reorder_level': instance.reorderLevel,
      'reorder_quantity': instance.reorderQuantity,
      'last_purchase_price': instance.lastPurchasePrice,
      'average_cost': instance.averageCost,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_InventoryItemCreate _$InventoryItemCreateFromJson(Map<String, dynamic> json) =>
    _InventoryItemCreate(
      storeId: json['store_id'] as String,
      name: json['name'] as String,
      sku: json['sku'] as String?,
      category: json['category'] as String?,
      unitId: json['unit_id'] as String,
      minStock: (json['min_stock'] as num?)?.toDouble() ?? 0,
      maxStock: (json['max_stock'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$InventoryItemCreateToJson(
  _InventoryItemCreate instance,
) => <String, dynamic>{
  'store_id': instance.storeId,
  'name': instance.name,
  'sku': instance.sku,
  'category': instance.category,
  'unit_id': instance.unitId,
  'min_stock': instance.minStock,
  'max_stock': instance.maxStock,
  'is_active': instance.isActive,
};

_InventoryItemUpdate _$InventoryItemUpdateFromJson(Map<String, dynamic> json) =>
    _InventoryItemUpdate(
      name: json['name'] as String?,
      sku: json['sku'] as String?,
      category: json['category'] as String?,
      unitId: json['unit_id'] as String?,
      minStock: (json['min_stock'] as num?)?.toDouble(),
      maxStock: (json['max_stock'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$InventoryItemUpdateToJson(
  _InventoryItemUpdate instance,
) => <String, dynamic>{
  'name': instance.name,
  'sku': instance.sku,
  'category': instance.category,
  'unit_id': instance.unitId,
  'min_stock': instance.minStock,
  'max_stock': instance.maxStock,
  'is_active': instance.isActive,
};

_StockLevel _$StockLevelFromJson(Map<String, dynamic> json) => _StockLevel(
  id: json['id'] as String,
  itemId: json['item_id'] as String,
  locationId: json['location_id'] as String,
  quantity: (json['quantity'] as num?)?.toDouble() ?? 0,
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$StockLevelToJson(_StockLevel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_id': instance.itemId,
      'location_id': instance.locationId,
      'quantity': instance.quantity,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_StockAdjustmentCreate _$StockAdjustmentCreateFromJson(
  Map<String, dynamic> json,
) => _StockAdjustmentCreate(
  storeId: json['store_id'] as String,
  itemId: json['item_id'] as String,
  locationId: json['location_id'] as String,
  quantityChange: (json['quantity_change'] as num).toDouble(),
  reason: json['reason'] as String,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$StockAdjustmentCreateToJson(
  _StockAdjustmentCreate instance,
) => <String, dynamic>{
  'store_id': instance.storeId,
  'item_id': instance.itemId,
  'location_id': instance.locationId,
  'quantity_change': instance.quantityChange,
  'reason': instance.reason,
  'notes': instance.notes,
};

_StockAdjustmentResponse _$StockAdjustmentResponseFromJson(
  Map<String, dynamic> json,
) => _StockAdjustmentResponse(
  id: json['id'] as String,
  storeId: json['store_id'] as String,
  itemId: json['item_id'] as String,
  locationId: json['location_id'] as String,
  quantityChange: (json['quantity_change'] as num).toDouble(),
  reason: json['reason'] as String,
  notes: json['notes'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$StockAdjustmentResponseToJson(
  _StockAdjustmentResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'item_id': instance.itemId,
  'location_id': instance.locationId,
  'quantity_change': instance.quantityChange,
  'reason': instance.reason,
  'notes': instance.notes,
  'created_at': instance.createdAt?.toIso8601String(),
};

_InventoryUnit _$InventoryUnitFromJson(Map<String, dynamic> json) =>
    _InventoryUnit(
      id: json['id'] as String,
      storeId: json['store_id'] as String,
      name: json['name'] as String,
      abbreviation: json['abbreviation'] as String,
      conversionFactor: (json['conversion_factor'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$InventoryUnitToJson(_InventoryUnit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'name': instance.name,
      'abbreviation': instance.abbreviation,
      'conversion_factor': instance.conversionFactor,
    };

_InventoryLocation _$InventoryLocationFromJson(Map<String, dynamic> json) =>
    _InventoryLocation(
      id: json['id'] as String,
      storeId: json['store_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$InventoryLocationToJson(_InventoryLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'name': instance.name,
      'description': instance.description,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
    };
