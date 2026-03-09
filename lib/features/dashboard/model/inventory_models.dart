import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_models.freezed.dart';
part 'inventory_models.g.dart';

// ---------------------------------------------------------------------------
// Inventory Item
// ---------------------------------------------------------------------------

@freezed
abstract class InventoryItem with _$InventoryItem {
  const factory InventoryItem({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
    String? sku,
    String? category,
    @JsonKey(name: 'unit_id') required String unitId,
    @JsonKey(name: 'min_stock') @Default(0) double minStock,
    @JsonKey(name: 'max_stock') double? maxStock,
    @JsonKey(name: 'reorder_level') double? reorderLevel,
    @JsonKey(name: 'reorder_quantity') double? reorderQuantity,
    @JsonKey(name: 'last_purchase_price') double? lastPurchasePrice,
    @JsonKey(name: 'average_cost') double? averageCost,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _InventoryItem;

  factory InventoryItem.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemFromJson(json);
}

// ---------------------------------------------------------------------------
// Inventory Item Create
// ---------------------------------------------------------------------------

@freezed
abstract class InventoryItemCreate with _$InventoryItemCreate {
  const factory InventoryItemCreate({
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
    String? sku,
    String? category,
    @JsonKey(name: 'unit_id') required String unitId,
    @JsonKey(name: 'min_stock') @Default(0) double minStock,
    @JsonKey(name: 'max_stock') double? maxStock,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _InventoryItemCreate;

  factory InventoryItemCreate.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemCreateFromJson(json);
}

// ---------------------------------------------------------------------------
// Inventory Item Update
// ---------------------------------------------------------------------------

@freezed
abstract class InventoryItemUpdate with _$InventoryItemUpdate {
  const factory InventoryItemUpdate({
    String? name,
    String? sku,
    String? category,
    @JsonKey(name: 'unit_id') String? unitId,
    @JsonKey(name: 'min_stock') double? minStock,
    @JsonKey(name: 'max_stock') double? maxStock,
    @JsonKey(name: 'is_active') bool? isActive,
  }) = _InventoryItemUpdate;

  factory InventoryItemUpdate.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemUpdateFromJson(json);
}

// ---------------------------------------------------------------------------
// Stock Level
// ---------------------------------------------------------------------------

@freezed
abstract class StockLevel with _$StockLevel {
  const factory StockLevel({
    required String id,
    @JsonKey(name: 'item_id') required String itemId,
    @JsonKey(name: 'location_id') required String locationId,
    @Default(0) double quantity,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _StockLevel;

  factory StockLevel.fromJson(Map<String, dynamic> json) =>
      _$StockLevelFromJson(json);
}

// ---------------------------------------------------------------------------
// Stock Adjustment Create
// ---------------------------------------------------------------------------

@freezed
abstract class StockAdjustmentCreate with _$StockAdjustmentCreate {
  const factory StockAdjustmentCreate({
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'item_id') required String itemId,
    @JsonKey(name: 'location_id') required String locationId,
    @JsonKey(name: 'quantity_change') required double quantityChange,
    required String reason,
    String? notes,
  }) = _StockAdjustmentCreate;

  factory StockAdjustmentCreate.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentCreateFromJson(json);
}

// ---------------------------------------------------------------------------
// Stock Adjustment Response
// ---------------------------------------------------------------------------

@freezed
abstract class StockAdjustmentResponse with _$StockAdjustmentResponse {
  const factory StockAdjustmentResponse({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'item_id') required String itemId,
    @JsonKey(name: 'location_id') required String locationId,
    @JsonKey(name: 'quantity_change') required double quantityChange,
    required String reason,
    String? notes,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _StockAdjustmentResponse;

  factory StockAdjustmentResponse.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentResponseFromJson(json);
}

// ---------------------------------------------------------------------------
// Inventory Unit
// ---------------------------------------------------------------------------

@freezed
abstract class InventoryUnit with _$InventoryUnit {
  const factory InventoryUnit({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
    required String abbreviation,
    @JsonKey(name: 'conversion_factor') @Default(1.0) double conversionFactor,
  }) = _InventoryUnit;

  factory InventoryUnit.fromJson(Map<String, dynamic> json) =>
      _$InventoryUnitFromJson(json);
}

// ---------------------------------------------------------------------------
// Inventory Location
// ---------------------------------------------------------------------------

@freezed
abstract class InventoryLocation with _$InventoryLocation {
  const factory InventoryLocation({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
    String? description,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _InventoryLocation;

  factory InventoryLocation.fromJson(Map<String, dynamic> json) =>
      _$InventoryLocationFromJson(json);
}
