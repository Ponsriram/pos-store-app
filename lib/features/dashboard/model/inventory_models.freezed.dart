// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryItem {

 String get id;@JsonKey(name: 'store_id') String get storeId; String get name; String? get sku; String? get category;@JsonKey(name: 'unit_id') String get unitId;@JsonKey(name: 'min_stock') double get minStock;@JsonKey(name: 'max_stock') double? get maxStock;@JsonKey(name: 'reorder_level') double? get reorderLevel;@JsonKey(name: 'reorder_quantity') double? get reorderQuantity;@JsonKey(name: 'last_purchase_price') double? get lastPurchasePrice;@JsonKey(name: 'average_cost') double? get averageCost;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryItemCopyWith<InventoryItem> get copyWith => _$InventoryItemCopyWithImpl<InventoryItem>(this as InventoryItem, _$identity);

  /// Serializes this InventoryItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.maxStock, maxStock) || other.maxStock == maxStock)&&(identical(other.reorderLevel, reorderLevel) || other.reorderLevel == reorderLevel)&&(identical(other.reorderQuantity, reorderQuantity) || other.reorderQuantity == reorderQuantity)&&(identical(other.lastPurchasePrice, lastPurchasePrice) || other.lastPurchasePrice == lastPurchasePrice)&&(identical(other.averageCost, averageCost) || other.averageCost == averageCost)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,sku,category,unitId,minStock,maxStock,reorderLevel,reorderQuantity,lastPurchasePrice,averageCost,isActive,createdAt);

@override
String toString() {
  return 'InventoryItem(id: $id, storeId: $storeId, name: $name, sku: $sku, category: $category, unitId: $unitId, minStock: $minStock, maxStock: $maxStock, reorderLevel: $reorderLevel, reorderQuantity: $reorderQuantity, lastPurchasePrice: $lastPurchasePrice, averageCost: $averageCost, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $InventoryItemCopyWith<$Res>  {
  factory $InventoryItemCopyWith(InventoryItem value, $Res Function(InventoryItem) _then) = _$InventoryItemCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String? sku, String? category,@JsonKey(name: 'unit_id') String unitId,@JsonKey(name: 'min_stock') double minStock,@JsonKey(name: 'max_stock') double? maxStock,@JsonKey(name: 'reorder_level') double? reorderLevel,@JsonKey(name: 'reorder_quantity') double? reorderQuantity,@JsonKey(name: 'last_purchase_price') double? lastPurchasePrice,@JsonKey(name: 'average_cost') double? averageCost,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$InventoryItemCopyWithImpl<$Res>
    implements $InventoryItemCopyWith<$Res> {
  _$InventoryItemCopyWithImpl(this._self, this._then);

  final InventoryItem _self;
  final $Res Function(InventoryItem) _then;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? sku = freezed,Object? category = freezed,Object? unitId = null,Object? minStock = null,Object? maxStock = freezed,Object? reorderLevel = freezed,Object? reorderQuantity = freezed,Object? lastPurchasePrice = freezed,Object? averageCost = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,minStock: null == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double,maxStock: freezed == maxStock ? _self.maxStock : maxStock // ignore: cast_nullable_to_non_nullable
as double?,reorderLevel: freezed == reorderLevel ? _self.reorderLevel : reorderLevel // ignore: cast_nullable_to_non_nullable
as double?,reorderQuantity: freezed == reorderQuantity ? _self.reorderQuantity : reorderQuantity // ignore: cast_nullable_to_non_nullable
as double?,lastPurchasePrice: freezed == lastPurchasePrice ? _self.lastPurchasePrice : lastPurchasePrice // ignore: cast_nullable_to_non_nullable
as double?,averageCost: freezed == averageCost ? _self.averageCost : averageCost // ignore: cast_nullable_to_non_nullable
as double?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryItem].
extension InventoryItemPatterns on InventoryItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryItem value)  $default,){
final _that = this;
switch (_that) {
case _InventoryItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryItem value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'reorder_level')  double? reorderLevel, @JsonKey(name: 'reorder_quantity')  double? reorderQuantity, @JsonKey(name: 'last_purchase_price')  double? lastPurchasePrice, @JsonKey(name: 'average_cost')  double? averageCost, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.reorderLevel,_that.reorderQuantity,_that.lastPurchasePrice,_that.averageCost,_that.isActive,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'reorder_level')  double? reorderLevel, @JsonKey(name: 'reorder_quantity')  double? reorderQuantity, @JsonKey(name: 'last_purchase_price')  double? lastPurchasePrice, @JsonKey(name: 'average_cost')  double? averageCost, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _InventoryItem():
return $default(_that.id,_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.reorderLevel,_that.reorderQuantity,_that.lastPurchasePrice,_that.averageCost,_that.isActive,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'reorder_level')  double? reorderLevel, @JsonKey(name: 'reorder_quantity')  double? reorderQuantity, @JsonKey(name: 'last_purchase_price')  double? lastPurchasePrice, @JsonKey(name: 'average_cost')  double? averageCost, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.reorderLevel,_that.reorderQuantity,_that.lastPurchasePrice,_that.averageCost,_that.isActive,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryItem implements InventoryItem {
  const _InventoryItem({required this.id, @JsonKey(name: 'store_id') required this.storeId, required this.name, this.sku, this.category, @JsonKey(name: 'unit_id') required this.unitId, @JsonKey(name: 'min_stock') this.minStock = 0, @JsonKey(name: 'max_stock') this.maxStock, @JsonKey(name: 'reorder_level') this.reorderLevel, @JsonKey(name: 'reorder_quantity') this.reorderQuantity, @JsonKey(name: 'last_purchase_price') this.lastPurchasePrice, @JsonKey(name: 'average_cost') this.averageCost, @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'created_at') this.createdAt});
  factory _InventoryItem.fromJson(Map<String, dynamic> json) => _$InventoryItemFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override final  String name;
@override final  String? sku;
@override final  String? category;
@override@JsonKey(name: 'unit_id') final  String unitId;
@override@JsonKey(name: 'min_stock') final  double minStock;
@override@JsonKey(name: 'max_stock') final  double? maxStock;
@override@JsonKey(name: 'reorder_level') final  double? reorderLevel;
@override@JsonKey(name: 'reorder_quantity') final  double? reorderQuantity;
@override@JsonKey(name: 'last_purchase_price') final  double? lastPurchasePrice;
@override@JsonKey(name: 'average_cost') final  double? averageCost;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryItemCopyWith<_InventoryItem> get copyWith => __$InventoryItemCopyWithImpl<_InventoryItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.maxStock, maxStock) || other.maxStock == maxStock)&&(identical(other.reorderLevel, reorderLevel) || other.reorderLevel == reorderLevel)&&(identical(other.reorderQuantity, reorderQuantity) || other.reorderQuantity == reorderQuantity)&&(identical(other.lastPurchasePrice, lastPurchasePrice) || other.lastPurchasePrice == lastPurchasePrice)&&(identical(other.averageCost, averageCost) || other.averageCost == averageCost)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,sku,category,unitId,minStock,maxStock,reorderLevel,reorderQuantity,lastPurchasePrice,averageCost,isActive,createdAt);

@override
String toString() {
  return 'InventoryItem(id: $id, storeId: $storeId, name: $name, sku: $sku, category: $category, unitId: $unitId, minStock: $minStock, maxStock: $maxStock, reorderLevel: $reorderLevel, reorderQuantity: $reorderQuantity, lastPurchasePrice: $lastPurchasePrice, averageCost: $averageCost, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$InventoryItemCopyWith<$Res> implements $InventoryItemCopyWith<$Res> {
  factory _$InventoryItemCopyWith(_InventoryItem value, $Res Function(_InventoryItem) _then) = __$InventoryItemCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String? sku, String? category,@JsonKey(name: 'unit_id') String unitId,@JsonKey(name: 'min_stock') double minStock,@JsonKey(name: 'max_stock') double? maxStock,@JsonKey(name: 'reorder_level') double? reorderLevel,@JsonKey(name: 'reorder_quantity') double? reorderQuantity,@JsonKey(name: 'last_purchase_price') double? lastPurchasePrice,@JsonKey(name: 'average_cost') double? averageCost,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$InventoryItemCopyWithImpl<$Res>
    implements _$InventoryItemCopyWith<$Res> {
  __$InventoryItemCopyWithImpl(this._self, this._then);

  final _InventoryItem _self;
  final $Res Function(_InventoryItem) _then;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? sku = freezed,Object? category = freezed,Object? unitId = null,Object? minStock = null,Object? maxStock = freezed,Object? reorderLevel = freezed,Object? reorderQuantity = freezed,Object? lastPurchasePrice = freezed,Object? averageCost = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_InventoryItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,minStock: null == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double,maxStock: freezed == maxStock ? _self.maxStock : maxStock // ignore: cast_nullable_to_non_nullable
as double?,reorderLevel: freezed == reorderLevel ? _self.reorderLevel : reorderLevel // ignore: cast_nullable_to_non_nullable
as double?,reorderQuantity: freezed == reorderQuantity ? _self.reorderQuantity : reorderQuantity // ignore: cast_nullable_to_non_nullable
as double?,lastPurchasePrice: freezed == lastPurchasePrice ? _self.lastPurchasePrice : lastPurchasePrice // ignore: cast_nullable_to_non_nullable
as double?,averageCost: freezed == averageCost ? _self.averageCost : averageCost // ignore: cast_nullable_to_non_nullable
as double?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$InventoryItemCreate {

@JsonKey(name: 'store_id') String get storeId; String get name; String? get sku; String? get category;@JsonKey(name: 'unit_id') String get unitId;@JsonKey(name: 'min_stock') double get minStock;@JsonKey(name: 'max_stock') double? get maxStock;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of InventoryItemCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryItemCreateCopyWith<InventoryItemCreate> get copyWith => _$InventoryItemCreateCopyWithImpl<InventoryItemCreate>(this as InventoryItemCreate, _$identity);

  /// Serializes this InventoryItemCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryItemCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.maxStock, maxStock) || other.maxStock == maxStock)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,name,sku,category,unitId,minStock,maxStock,isActive);

@override
String toString() {
  return 'InventoryItemCreate(storeId: $storeId, name: $name, sku: $sku, category: $category, unitId: $unitId, minStock: $minStock, maxStock: $maxStock, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $InventoryItemCreateCopyWith<$Res>  {
  factory $InventoryItemCreateCopyWith(InventoryItemCreate value, $Res Function(InventoryItemCreate) _then) = _$InventoryItemCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId, String name, String? sku, String? category,@JsonKey(name: 'unit_id') String unitId,@JsonKey(name: 'min_stock') double minStock,@JsonKey(name: 'max_stock') double? maxStock,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$InventoryItemCreateCopyWithImpl<$Res>
    implements $InventoryItemCreateCopyWith<$Res> {
  _$InventoryItemCreateCopyWithImpl(this._self, this._then);

  final InventoryItemCreate _self;
  final $Res Function(InventoryItemCreate) _then;

/// Create a copy of InventoryItemCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? name = null,Object? sku = freezed,Object? category = freezed,Object? unitId = null,Object? minStock = null,Object? maxStock = freezed,Object? isActive = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,minStock: null == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double,maxStock: freezed == maxStock ? _self.maxStock : maxStock // ignore: cast_nullable_to_non_nullable
as double?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryItemCreate].
extension InventoryItemCreatePatterns on InventoryItemCreate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryItemCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryItemCreate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryItemCreate value)  $default,){
final _that = this;
switch (_that) {
case _InventoryItemCreate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryItemCreate value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryItemCreate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryItemCreate() when $default != null:
return $default(_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.isActive);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _InventoryItemCreate():
return $default(_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.isActive);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _InventoryItemCreate() when $default != null:
return $default(_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryItemCreate implements InventoryItemCreate {
  const _InventoryItemCreate({@JsonKey(name: 'store_id') required this.storeId, required this.name, this.sku, this.category, @JsonKey(name: 'unit_id') required this.unitId, @JsonKey(name: 'min_stock') this.minStock = 0, @JsonKey(name: 'max_stock') this.maxStock, @JsonKey(name: 'is_active') this.isActive = true});
  factory _InventoryItemCreate.fromJson(Map<String, dynamic> json) => _$InventoryItemCreateFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override final  String name;
@override final  String? sku;
@override final  String? category;
@override@JsonKey(name: 'unit_id') final  String unitId;
@override@JsonKey(name: 'min_stock') final  double minStock;
@override@JsonKey(name: 'max_stock') final  double? maxStock;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of InventoryItemCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryItemCreateCopyWith<_InventoryItemCreate> get copyWith => __$InventoryItemCreateCopyWithImpl<_InventoryItemCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryItemCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryItemCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.maxStock, maxStock) || other.maxStock == maxStock)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,name,sku,category,unitId,minStock,maxStock,isActive);

@override
String toString() {
  return 'InventoryItemCreate(storeId: $storeId, name: $name, sku: $sku, category: $category, unitId: $unitId, minStock: $minStock, maxStock: $maxStock, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$InventoryItemCreateCopyWith<$Res> implements $InventoryItemCreateCopyWith<$Res> {
  factory _$InventoryItemCreateCopyWith(_InventoryItemCreate value, $Res Function(_InventoryItemCreate) _then) = __$InventoryItemCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId, String name, String? sku, String? category,@JsonKey(name: 'unit_id') String unitId,@JsonKey(name: 'min_stock') double minStock,@JsonKey(name: 'max_stock') double? maxStock,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$InventoryItemCreateCopyWithImpl<$Res>
    implements _$InventoryItemCreateCopyWith<$Res> {
  __$InventoryItemCreateCopyWithImpl(this._self, this._then);

  final _InventoryItemCreate _self;
  final $Res Function(_InventoryItemCreate) _then;

/// Create a copy of InventoryItemCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? name = null,Object? sku = freezed,Object? category = freezed,Object? unitId = null,Object? minStock = null,Object? maxStock = freezed,Object? isActive = null,}) {
  return _then(_InventoryItemCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,minStock: null == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double,maxStock: freezed == maxStock ? _self.maxStock : maxStock // ignore: cast_nullable_to_non_nullable
as double?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$InventoryItemUpdate {

 String? get name; String? get sku; String? get category;@JsonKey(name: 'unit_id') String? get unitId;@JsonKey(name: 'min_stock') double? get minStock;@JsonKey(name: 'max_stock') double? get maxStock;@JsonKey(name: 'is_active') bool? get isActive;
/// Create a copy of InventoryItemUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryItemUpdateCopyWith<InventoryItemUpdate> get copyWith => _$InventoryItemUpdateCopyWithImpl<InventoryItemUpdate>(this as InventoryItemUpdate, _$identity);

  /// Serializes this InventoryItemUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryItemUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.maxStock, maxStock) || other.maxStock == maxStock)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sku,category,unitId,minStock,maxStock,isActive);

@override
String toString() {
  return 'InventoryItemUpdate(name: $name, sku: $sku, category: $category, unitId: $unitId, minStock: $minStock, maxStock: $maxStock, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $InventoryItemUpdateCopyWith<$Res>  {
  factory $InventoryItemUpdateCopyWith(InventoryItemUpdate value, $Res Function(InventoryItemUpdate) _then) = _$InventoryItemUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, String? sku, String? category,@JsonKey(name: 'unit_id') String? unitId,@JsonKey(name: 'min_stock') double? minStock,@JsonKey(name: 'max_stock') double? maxStock,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class _$InventoryItemUpdateCopyWithImpl<$Res>
    implements $InventoryItemUpdateCopyWith<$Res> {
  _$InventoryItemUpdateCopyWithImpl(this._self, this._then);

  final InventoryItemUpdate _self;
  final $Res Function(InventoryItemUpdate) _then;

/// Create a copy of InventoryItemUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? sku = freezed,Object? category = freezed,Object? unitId = freezed,Object? minStock = freezed,Object? maxStock = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String?,minStock: freezed == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double?,maxStock: freezed == maxStock ? _self.maxStock : maxStock // ignore: cast_nullable_to_non_nullable
as double?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryItemUpdate].
extension InventoryItemUpdatePatterns on InventoryItemUpdate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryItemUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryItemUpdate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryItemUpdate value)  $default,){
final _that = this;
switch (_that) {
case _InventoryItemUpdate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryItemUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryItemUpdate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String? unitId, @JsonKey(name: 'min_stock')  double? minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'is_active')  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryItemUpdate() when $default != null:
return $default(_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.isActive);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String? unitId, @JsonKey(name: 'min_stock')  double? minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'is_active')  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _InventoryItemUpdate():
return $default(_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.isActive);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String? unitId, @JsonKey(name: 'min_stock')  double? minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'is_active')  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _InventoryItemUpdate() when $default != null:
return $default(_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryItemUpdate implements InventoryItemUpdate {
  const _InventoryItemUpdate({this.name, this.sku, this.category, @JsonKey(name: 'unit_id') this.unitId, @JsonKey(name: 'min_stock') this.minStock, @JsonKey(name: 'max_stock') this.maxStock, @JsonKey(name: 'is_active') this.isActive});
  factory _InventoryItemUpdate.fromJson(Map<String, dynamic> json) => _$InventoryItemUpdateFromJson(json);

@override final  String? name;
@override final  String? sku;
@override final  String? category;
@override@JsonKey(name: 'unit_id') final  String? unitId;
@override@JsonKey(name: 'min_stock') final  double? minStock;
@override@JsonKey(name: 'max_stock') final  double? maxStock;
@override@JsonKey(name: 'is_active') final  bool? isActive;

/// Create a copy of InventoryItemUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryItemUpdateCopyWith<_InventoryItemUpdate> get copyWith => __$InventoryItemUpdateCopyWithImpl<_InventoryItemUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryItemUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryItemUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.maxStock, maxStock) || other.maxStock == maxStock)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sku,category,unitId,minStock,maxStock,isActive);

@override
String toString() {
  return 'InventoryItemUpdate(name: $name, sku: $sku, category: $category, unitId: $unitId, minStock: $minStock, maxStock: $maxStock, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$InventoryItemUpdateCopyWith<$Res> implements $InventoryItemUpdateCopyWith<$Res> {
  factory _$InventoryItemUpdateCopyWith(_InventoryItemUpdate value, $Res Function(_InventoryItemUpdate) _then) = __$InventoryItemUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? sku, String? category,@JsonKey(name: 'unit_id') String? unitId,@JsonKey(name: 'min_stock') double? minStock,@JsonKey(name: 'max_stock') double? maxStock,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class __$InventoryItemUpdateCopyWithImpl<$Res>
    implements _$InventoryItemUpdateCopyWith<$Res> {
  __$InventoryItemUpdateCopyWithImpl(this._self, this._then);

  final _InventoryItemUpdate _self;
  final $Res Function(_InventoryItemUpdate) _then;

/// Create a copy of InventoryItemUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? sku = freezed,Object? category = freezed,Object? unitId = freezed,Object? minStock = freezed,Object? maxStock = freezed,Object? isActive = freezed,}) {
  return _then(_InventoryItemUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String?,minStock: freezed == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double?,maxStock: freezed == maxStock ? _self.maxStock : maxStock // ignore: cast_nullable_to_non_nullable
as double?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$StockLevel {

 String get id;@JsonKey(name: 'item_id') String get itemId;@JsonKey(name: 'location_id') String get locationId; double get quantity;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockLevelCopyWith<StockLevel> get copyWith => _$StockLevelCopyWithImpl<StockLevel>(this as StockLevel, _$identity);

  /// Serializes this StockLevel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockLevel&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemId,locationId,quantity,updatedAt);

@override
String toString() {
  return 'StockLevel(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $StockLevelCopyWith<$Res>  {
  factory $StockLevelCopyWith(StockLevel value, $Res Function(StockLevel) _then) = _$StockLevelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'location_id') String locationId, double quantity,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$StockLevelCopyWithImpl<$Res>
    implements $StockLevelCopyWith<$Res> {
  _$StockLevelCopyWithImpl(this._self, this._then);

  final StockLevel _self;
  final $Res Function(StockLevel) _then;

/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? itemId = null,Object? locationId = null,Object? quantity = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StockLevel].
extension StockLevelPatterns on StockLevel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockLevel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockLevel value)  $default,){
final _that = this;
switch (_that) {
case _StockLevel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockLevel value)?  $default,){
final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId,  double quantity, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
return $default(_that.id,_that.itemId,_that.locationId,_that.quantity,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId,  double quantity, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _StockLevel():
return $default(_that.id,_that.itemId,_that.locationId,_that.quantity,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId,  double quantity, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
return $default(_that.id,_that.itemId,_that.locationId,_that.quantity,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockLevel implements StockLevel {
  const _StockLevel({required this.id, @JsonKey(name: 'item_id') required this.itemId, @JsonKey(name: 'location_id') required this.locationId, this.quantity = 0, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _StockLevel.fromJson(Map<String, dynamic> json) => _$StockLevelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'item_id') final  String itemId;
@override@JsonKey(name: 'location_id') final  String locationId;
@override@JsonKey() final  double quantity;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockLevelCopyWith<_StockLevel> get copyWith => __$StockLevelCopyWithImpl<_StockLevel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockLevelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockLevel&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemId,locationId,quantity,updatedAt);

@override
String toString() {
  return 'StockLevel(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$StockLevelCopyWith<$Res> implements $StockLevelCopyWith<$Res> {
  factory _$StockLevelCopyWith(_StockLevel value, $Res Function(_StockLevel) _then) = __$StockLevelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'location_id') String locationId, double quantity,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$StockLevelCopyWithImpl<$Res>
    implements _$StockLevelCopyWith<$Res> {
  __$StockLevelCopyWithImpl(this._self, this._then);

  final _StockLevel _self;
  final $Res Function(_StockLevel) _then;

/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? itemId = null,Object? locationId = null,Object? quantity = null,Object? updatedAt = freezed,}) {
  return _then(_StockLevel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$StockAdjustmentCreate {

@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'item_id') String get itemId;@JsonKey(name: 'location_id') String get locationId;@JsonKey(name: 'quantity_change') double get quantityChange; String get reason; String? get notes;
/// Create a copy of StockAdjustmentCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockAdjustmentCreateCopyWith<StockAdjustmentCreate> get copyWith => _$StockAdjustmentCreateCopyWithImpl<StockAdjustmentCreate>(this as StockAdjustmentCreate, _$identity);

  /// Serializes this StockAdjustmentCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockAdjustmentCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.quantityChange, quantityChange) || other.quantityChange == quantityChange)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,itemId,locationId,quantityChange,reason,notes);

@override
String toString() {
  return 'StockAdjustmentCreate(storeId: $storeId, itemId: $itemId, locationId: $locationId, quantityChange: $quantityChange, reason: $reason, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $StockAdjustmentCreateCopyWith<$Res>  {
  factory $StockAdjustmentCreateCopyWith(StockAdjustmentCreate value, $Res Function(StockAdjustmentCreate) _then) = _$StockAdjustmentCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'location_id') String locationId,@JsonKey(name: 'quantity_change') double quantityChange, String reason, String? notes
});




}
/// @nodoc
class _$StockAdjustmentCreateCopyWithImpl<$Res>
    implements $StockAdjustmentCreateCopyWith<$Res> {
  _$StockAdjustmentCreateCopyWithImpl(this._self, this._then);

  final StockAdjustmentCreate _self;
  final $Res Function(StockAdjustmentCreate) _then;

/// Create a copy of StockAdjustmentCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? itemId = null,Object? locationId = null,Object? quantityChange = null,Object? reason = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,quantityChange: null == quantityChange ? _self.quantityChange : quantityChange // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StockAdjustmentCreate].
extension StockAdjustmentCreatePatterns on StockAdjustmentCreate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockAdjustmentCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockAdjustmentCreate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockAdjustmentCreate value)  $default,){
final _that = this;
switch (_that) {
case _StockAdjustmentCreate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockAdjustmentCreate value)?  $default,){
final _that = this;
switch (_that) {
case _StockAdjustmentCreate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId, @JsonKey(name: 'quantity_change')  double quantityChange,  String reason,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockAdjustmentCreate() when $default != null:
return $default(_that.storeId,_that.itemId,_that.locationId,_that.quantityChange,_that.reason,_that.notes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId, @JsonKey(name: 'quantity_change')  double quantityChange,  String reason,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _StockAdjustmentCreate():
return $default(_that.storeId,_that.itemId,_that.locationId,_that.quantityChange,_that.reason,_that.notes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId, @JsonKey(name: 'quantity_change')  double quantityChange,  String reason,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _StockAdjustmentCreate() when $default != null:
return $default(_that.storeId,_that.itemId,_that.locationId,_that.quantityChange,_that.reason,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockAdjustmentCreate implements StockAdjustmentCreate {
  const _StockAdjustmentCreate({@JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'item_id') required this.itemId, @JsonKey(name: 'location_id') required this.locationId, @JsonKey(name: 'quantity_change') required this.quantityChange, required this.reason, this.notes});
  factory _StockAdjustmentCreate.fromJson(Map<String, dynamic> json) => _$StockAdjustmentCreateFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'item_id') final  String itemId;
@override@JsonKey(name: 'location_id') final  String locationId;
@override@JsonKey(name: 'quantity_change') final  double quantityChange;
@override final  String reason;
@override final  String? notes;

/// Create a copy of StockAdjustmentCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockAdjustmentCreateCopyWith<_StockAdjustmentCreate> get copyWith => __$StockAdjustmentCreateCopyWithImpl<_StockAdjustmentCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockAdjustmentCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockAdjustmentCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.quantityChange, quantityChange) || other.quantityChange == quantityChange)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,itemId,locationId,quantityChange,reason,notes);

@override
String toString() {
  return 'StockAdjustmentCreate(storeId: $storeId, itemId: $itemId, locationId: $locationId, quantityChange: $quantityChange, reason: $reason, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$StockAdjustmentCreateCopyWith<$Res> implements $StockAdjustmentCreateCopyWith<$Res> {
  factory _$StockAdjustmentCreateCopyWith(_StockAdjustmentCreate value, $Res Function(_StockAdjustmentCreate) _then) = __$StockAdjustmentCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'location_id') String locationId,@JsonKey(name: 'quantity_change') double quantityChange, String reason, String? notes
});




}
/// @nodoc
class __$StockAdjustmentCreateCopyWithImpl<$Res>
    implements _$StockAdjustmentCreateCopyWith<$Res> {
  __$StockAdjustmentCreateCopyWithImpl(this._self, this._then);

  final _StockAdjustmentCreate _self;
  final $Res Function(_StockAdjustmentCreate) _then;

/// Create a copy of StockAdjustmentCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? itemId = null,Object? locationId = null,Object? quantityChange = null,Object? reason = null,Object? notes = freezed,}) {
  return _then(_StockAdjustmentCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,quantityChange: null == quantityChange ? _self.quantityChange : quantityChange // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StockAdjustmentResponse {

 String get id;@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'item_id') String get itemId;@JsonKey(name: 'location_id') String get locationId;@JsonKey(name: 'quantity_change') double get quantityChange; String get reason; String? get notes;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of StockAdjustmentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockAdjustmentResponseCopyWith<StockAdjustmentResponse> get copyWith => _$StockAdjustmentResponseCopyWithImpl<StockAdjustmentResponse>(this as StockAdjustmentResponse, _$identity);

  /// Serializes this StockAdjustmentResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockAdjustmentResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.quantityChange, quantityChange) || other.quantityChange == quantityChange)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,itemId,locationId,quantityChange,reason,notes,createdAt);

@override
String toString() {
  return 'StockAdjustmentResponse(id: $id, storeId: $storeId, itemId: $itemId, locationId: $locationId, quantityChange: $quantityChange, reason: $reason, notes: $notes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $StockAdjustmentResponseCopyWith<$Res>  {
  factory $StockAdjustmentResponseCopyWith(StockAdjustmentResponse value, $Res Function(StockAdjustmentResponse) _then) = _$StockAdjustmentResponseCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'location_id') String locationId,@JsonKey(name: 'quantity_change') double quantityChange, String reason, String? notes,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$StockAdjustmentResponseCopyWithImpl<$Res>
    implements $StockAdjustmentResponseCopyWith<$Res> {
  _$StockAdjustmentResponseCopyWithImpl(this._self, this._then);

  final StockAdjustmentResponse _self;
  final $Res Function(StockAdjustmentResponse) _then;

/// Create a copy of StockAdjustmentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? itemId = null,Object? locationId = null,Object? quantityChange = null,Object? reason = null,Object? notes = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,quantityChange: null == quantityChange ? _self.quantityChange : quantityChange // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StockAdjustmentResponse].
extension StockAdjustmentResponsePatterns on StockAdjustmentResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockAdjustmentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockAdjustmentResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockAdjustmentResponse value)  $default,){
final _that = this;
switch (_that) {
case _StockAdjustmentResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockAdjustmentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _StockAdjustmentResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId, @JsonKey(name: 'quantity_change')  double quantityChange,  String reason,  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockAdjustmentResponse() when $default != null:
return $default(_that.id,_that.storeId,_that.itemId,_that.locationId,_that.quantityChange,_that.reason,_that.notes,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId, @JsonKey(name: 'quantity_change')  double quantityChange,  String reason,  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _StockAdjustmentResponse():
return $default(_that.id,_that.storeId,_that.itemId,_that.locationId,_that.quantityChange,_that.reason,_that.notes,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId, @JsonKey(name: 'quantity_change')  double quantityChange,  String reason,  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _StockAdjustmentResponse() when $default != null:
return $default(_that.id,_that.storeId,_that.itemId,_that.locationId,_that.quantityChange,_that.reason,_that.notes,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockAdjustmentResponse implements StockAdjustmentResponse {
  const _StockAdjustmentResponse({required this.id, @JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'item_id') required this.itemId, @JsonKey(name: 'location_id') required this.locationId, @JsonKey(name: 'quantity_change') required this.quantityChange, required this.reason, this.notes, @JsonKey(name: 'created_at') this.createdAt});
  factory _StockAdjustmentResponse.fromJson(Map<String, dynamic> json) => _$StockAdjustmentResponseFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'item_id') final  String itemId;
@override@JsonKey(name: 'location_id') final  String locationId;
@override@JsonKey(name: 'quantity_change') final  double quantityChange;
@override final  String reason;
@override final  String? notes;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of StockAdjustmentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockAdjustmentResponseCopyWith<_StockAdjustmentResponse> get copyWith => __$StockAdjustmentResponseCopyWithImpl<_StockAdjustmentResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockAdjustmentResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockAdjustmentResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.quantityChange, quantityChange) || other.quantityChange == quantityChange)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,itemId,locationId,quantityChange,reason,notes,createdAt);

@override
String toString() {
  return 'StockAdjustmentResponse(id: $id, storeId: $storeId, itemId: $itemId, locationId: $locationId, quantityChange: $quantityChange, reason: $reason, notes: $notes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$StockAdjustmentResponseCopyWith<$Res> implements $StockAdjustmentResponseCopyWith<$Res> {
  factory _$StockAdjustmentResponseCopyWith(_StockAdjustmentResponse value, $Res Function(_StockAdjustmentResponse) _then) = __$StockAdjustmentResponseCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'location_id') String locationId,@JsonKey(name: 'quantity_change') double quantityChange, String reason, String? notes,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$StockAdjustmentResponseCopyWithImpl<$Res>
    implements _$StockAdjustmentResponseCopyWith<$Res> {
  __$StockAdjustmentResponseCopyWithImpl(this._self, this._then);

  final _StockAdjustmentResponse _self;
  final $Res Function(_StockAdjustmentResponse) _then;

/// Create a copy of StockAdjustmentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? itemId = null,Object? locationId = null,Object? quantityChange = null,Object? reason = null,Object? notes = freezed,Object? createdAt = freezed,}) {
  return _then(_StockAdjustmentResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,quantityChange: null == quantityChange ? _self.quantityChange : quantityChange // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$InventoryUnit {

 String get id;@JsonKey(name: 'store_id') String get storeId; String get name; String get abbreviation;@JsonKey(name: 'conversion_factor') double get conversionFactor;
/// Create a copy of InventoryUnit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryUnitCopyWith<InventoryUnit> get copyWith => _$InventoryUnitCopyWithImpl<InventoryUnit>(this as InventoryUnit, _$identity);

  /// Serializes this InventoryUnit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryUnit&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.abbreviation, abbreviation) || other.abbreviation == abbreviation)&&(identical(other.conversionFactor, conversionFactor) || other.conversionFactor == conversionFactor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,abbreviation,conversionFactor);

@override
String toString() {
  return 'InventoryUnit(id: $id, storeId: $storeId, name: $name, abbreviation: $abbreviation, conversionFactor: $conversionFactor)';
}


}

/// @nodoc
abstract mixin class $InventoryUnitCopyWith<$Res>  {
  factory $InventoryUnitCopyWith(InventoryUnit value, $Res Function(InventoryUnit) _then) = _$InventoryUnitCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String abbreviation,@JsonKey(name: 'conversion_factor') double conversionFactor
});




}
/// @nodoc
class _$InventoryUnitCopyWithImpl<$Res>
    implements $InventoryUnitCopyWith<$Res> {
  _$InventoryUnitCopyWithImpl(this._self, this._then);

  final InventoryUnit _self;
  final $Res Function(InventoryUnit) _then;

/// Create a copy of InventoryUnit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? abbreviation = null,Object? conversionFactor = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,abbreviation: null == abbreviation ? _self.abbreviation : abbreviation // ignore: cast_nullable_to_non_nullable
as String,conversionFactor: null == conversionFactor ? _self.conversionFactor : conversionFactor // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryUnit].
extension InventoryUnitPatterns on InventoryUnit {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryUnit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryUnit() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryUnit value)  $default,){
final _that = this;
switch (_that) {
case _InventoryUnit():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryUnit value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryUnit() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String abbreviation, @JsonKey(name: 'conversion_factor')  double conversionFactor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryUnit() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.abbreviation,_that.conversionFactor);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String abbreviation, @JsonKey(name: 'conversion_factor')  double conversionFactor)  $default,) {final _that = this;
switch (_that) {
case _InventoryUnit():
return $default(_that.id,_that.storeId,_that.name,_that.abbreviation,_that.conversionFactor);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String abbreviation, @JsonKey(name: 'conversion_factor')  double conversionFactor)?  $default,) {final _that = this;
switch (_that) {
case _InventoryUnit() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.abbreviation,_that.conversionFactor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryUnit implements InventoryUnit {
  const _InventoryUnit({required this.id, @JsonKey(name: 'store_id') required this.storeId, required this.name, required this.abbreviation, @JsonKey(name: 'conversion_factor') this.conversionFactor = 1.0});
  factory _InventoryUnit.fromJson(Map<String, dynamic> json) => _$InventoryUnitFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override final  String name;
@override final  String abbreviation;
@override@JsonKey(name: 'conversion_factor') final  double conversionFactor;

/// Create a copy of InventoryUnit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryUnitCopyWith<_InventoryUnit> get copyWith => __$InventoryUnitCopyWithImpl<_InventoryUnit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryUnitToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryUnit&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.abbreviation, abbreviation) || other.abbreviation == abbreviation)&&(identical(other.conversionFactor, conversionFactor) || other.conversionFactor == conversionFactor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,abbreviation,conversionFactor);

@override
String toString() {
  return 'InventoryUnit(id: $id, storeId: $storeId, name: $name, abbreviation: $abbreviation, conversionFactor: $conversionFactor)';
}


}

/// @nodoc
abstract mixin class _$InventoryUnitCopyWith<$Res> implements $InventoryUnitCopyWith<$Res> {
  factory _$InventoryUnitCopyWith(_InventoryUnit value, $Res Function(_InventoryUnit) _then) = __$InventoryUnitCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String abbreviation,@JsonKey(name: 'conversion_factor') double conversionFactor
});




}
/// @nodoc
class __$InventoryUnitCopyWithImpl<$Res>
    implements _$InventoryUnitCopyWith<$Res> {
  __$InventoryUnitCopyWithImpl(this._self, this._then);

  final _InventoryUnit _self;
  final $Res Function(_InventoryUnit) _then;

/// Create a copy of InventoryUnit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? abbreviation = null,Object? conversionFactor = null,}) {
  return _then(_InventoryUnit(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,abbreviation: null == abbreviation ? _self.abbreviation : abbreviation // ignore: cast_nullable_to_non_nullable
as String,conversionFactor: null == conversionFactor ? _self.conversionFactor : conversionFactor // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$InventoryLocation {

 String get id;@JsonKey(name: 'store_id') String get storeId; String get name; String? get description;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of InventoryLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryLocationCopyWith<InventoryLocation> get copyWith => _$InventoryLocationCopyWithImpl<InventoryLocation>(this as InventoryLocation, _$identity);

  /// Serializes this InventoryLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,description,isActive,createdAt);

@override
String toString() {
  return 'InventoryLocation(id: $id, storeId: $storeId, name: $name, description: $description, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $InventoryLocationCopyWith<$Res>  {
  factory $InventoryLocationCopyWith(InventoryLocation value, $Res Function(InventoryLocation) _then) = _$InventoryLocationCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String? description,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$InventoryLocationCopyWithImpl<$Res>
    implements $InventoryLocationCopyWith<$Res> {
  _$InventoryLocationCopyWithImpl(this._self, this._then);

  final InventoryLocation _self;
  final $Res Function(InventoryLocation) _then;

/// Create a copy of InventoryLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? description = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryLocation].
extension InventoryLocationPatterns on InventoryLocation {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryLocation() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryLocation value)  $default,){
final _that = this;
switch (_that) {
case _InventoryLocation():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryLocation value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryLocation() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? description, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryLocation() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.description,_that.isActive,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? description, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _InventoryLocation():
return $default(_that.id,_that.storeId,_that.name,_that.description,_that.isActive,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? description, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _InventoryLocation() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.description,_that.isActive,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryLocation implements InventoryLocation {
  const _InventoryLocation({required this.id, @JsonKey(name: 'store_id') required this.storeId, required this.name, this.description, @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'created_at') this.createdAt});
  factory _InventoryLocation.fromJson(Map<String, dynamic> json) => _$InventoryLocationFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override final  String name;
@override final  String? description;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of InventoryLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryLocationCopyWith<_InventoryLocation> get copyWith => __$InventoryLocationCopyWithImpl<_InventoryLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,description,isActive,createdAt);

@override
String toString() {
  return 'InventoryLocation(id: $id, storeId: $storeId, name: $name, description: $description, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$InventoryLocationCopyWith<$Res> implements $InventoryLocationCopyWith<$Res> {
  factory _$InventoryLocationCopyWith(_InventoryLocation value, $Res Function(_InventoryLocation) _then) = __$InventoryLocationCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String? description,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$InventoryLocationCopyWithImpl<$Res>
    implements _$InventoryLocationCopyWith<$Res> {
  __$InventoryLocationCopyWithImpl(this._self, this._then);

  final _InventoryLocation _self;
  final $Res Function(_InventoryLocation) _then;

/// Create a copy of InventoryLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? description = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_InventoryLocation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
