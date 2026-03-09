// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductCreate {

@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'category_id') String? get categoryId; String get name; String? get description; double get price;@JsonKey(name: 'tax_percent') double get taxPercent;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of ProductCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCreateCopyWith<ProductCreate> get copyWith => _$ProductCreateCopyWithImpl<ProductCreate>(this as ProductCreate, _$identity);

  /// Serializes this ProductCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.taxPercent, taxPercent) || other.taxPercent == taxPercent)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,categoryId,name,description,price,taxPercent,isActive);

@override
String toString() {
  return 'ProductCreate(storeId: $storeId, categoryId: $categoryId, name: $name, description: $description, price: $price, taxPercent: $taxPercent, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $ProductCreateCopyWith<$Res>  {
  factory $ProductCreateCopyWith(ProductCreate value, $Res Function(ProductCreate) _then) = _$ProductCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'category_id') String? categoryId, String name, String? description, double price,@JsonKey(name: 'tax_percent') double taxPercent,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$ProductCreateCopyWithImpl<$Res>
    implements $ProductCreateCopyWith<$Res> {
  _$ProductCreateCopyWithImpl(this._self, this._then);

  final ProductCreate _self;
  final $Res Function(ProductCreate) _then;

/// Create a copy of ProductCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? categoryId = freezed,Object? name = null,Object? description = freezed,Object? price = null,Object? taxPercent = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,taxPercent: null == taxPercent ? _self.taxPercent : taxPercent // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductCreate].
extension ProductCreatePatterns on ProductCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCreate value)  $default,){
final _that = this;
switch (_that) {
case _ProductCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCreate value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'category_id')  String? categoryId,  String name,  String? description,  double price, @JsonKey(name: 'tax_percent')  double taxPercent, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCreate() when $default != null:
return $default(_that.storeId,_that.categoryId,_that.name,_that.description,_that.price,_that.taxPercent,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'category_id')  String? categoryId,  String name,  String? description,  double price, @JsonKey(name: 'tax_percent')  double taxPercent, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _ProductCreate():
return $default(_that.storeId,_that.categoryId,_that.name,_that.description,_that.price,_that.taxPercent,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'category_id')  String? categoryId,  String name,  String? description,  double price, @JsonKey(name: 'tax_percent')  double taxPercent, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _ProductCreate() when $default != null:
return $default(_that.storeId,_that.categoryId,_that.name,_that.description,_that.price,_that.taxPercent,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductCreate implements ProductCreate {
  const _ProductCreate({@JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'category_id') this.categoryId, required this.name, this.description, required this.price, @JsonKey(name: 'tax_percent') this.taxPercent = 0, @JsonKey(name: 'is_active') this.isActive = true});
  factory _ProductCreate.fromJson(Map<String, dynamic> json) => _$ProductCreateFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'category_id') final  String? categoryId;
@override final  String name;
@override final  String? description;
@override final  double price;
@override@JsonKey(name: 'tax_percent') final  double taxPercent;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of ProductCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCreateCopyWith<_ProductCreate> get copyWith => __$ProductCreateCopyWithImpl<_ProductCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.taxPercent, taxPercent) || other.taxPercent == taxPercent)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,categoryId,name,description,price,taxPercent,isActive);

@override
String toString() {
  return 'ProductCreate(storeId: $storeId, categoryId: $categoryId, name: $name, description: $description, price: $price, taxPercent: $taxPercent, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$ProductCreateCopyWith<$Res> implements $ProductCreateCopyWith<$Res> {
  factory _$ProductCreateCopyWith(_ProductCreate value, $Res Function(_ProductCreate) _then) = __$ProductCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'category_id') String? categoryId, String name, String? description, double price,@JsonKey(name: 'tax_percent') double taxPercent,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$ProductCreateCopyWithImpl<$Res>
    implements _$ProductCreateCopyWith<$Res> {
  __$ProductCreateCopyWithImpl(this._self, this._then);

  final _ProductCreate _self;
  final $Res Function(_ProductCreate) _then;

/// Create a copy of ProductCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? categoryId = freezed,Object? name = null,Object? description = freezed,Object? price = null,Object? taxPercent = null,Object? isActive = null,}) {
  return _then(_ProductCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,taxPercent: null == taxPercent ? _self.taxPercent : taxPercent // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ProductUpdate {

 String? get name; String? get description; double? get price;@JsonKey(name: 'tax_percent') double? get taxPercent;@JsonKey(name: 'is_active') bool? get isActive;@JsonKey(name: 'category_id') String? get categoryId;
/// Create a copy of ProductUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductUpdateCopyWith<ProductUpdate> get copyWith => _$ProductUpdateCopyWithImpl<ProductUpdate>(this as ProductUpdate, _$identity);

  /// Serializes this ProductUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.taxPercent, taxPercent) || other.taxPercent == taxPercent)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,price,taxPercent,isActive,categoryId);

@override
String toString() {
  return 'ProductUpdate(name: $name, description: $description, price: $price, taxPercent: $taxPercent, isActive: $isActive, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $ProductUpdateCopyWith<$Res>  {
  factory $ProductUpdateCopyWith(ProductUpdate value, $Res Function(ProductUpdate) _then) = _$ProductUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, String? description, double? price,@JsonKey(name: 'tax_percent') double? taxPercent,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'category_id') String? categoryId
});




}
/// @nodoc
class _$ProductUpdateCopyWithImpl<$Res>
    implements $ProductUpdateCopyWith<$Res> {
  _$ProductUpdateCopyWithImpl(this._self, this._then);

  final ProductUpdate _self;
  final $Res Function(ProductUpdate) _then;

/// Create a copy of ProductUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? description = freezed,Object? price = freezed,Object? taxPercent = freezed,Object? isActive = freezed,Object? categoryId = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,taxPercent: freezed == taxPercent ? _self.taxPercent : taxPercent // ignore: cast_nullable_to_non_nullable
as double?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductUpdate].
extension ProductUpdatePatterns on ProductUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductUpdate value)  $default,){
final _that = this;
switch (_that) {
case _ProductUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _ProductUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? description,  double? price, @JsonKey(name: 'tax_percent')  double? taxPercent, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'category_id')  String? categoryId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductUpdate() when $default != null:
return $default(_that.name,_that.description,_that.price,_that.taxPercent,_that.isActive,_that.categoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? description,  double? price, @JsonKey(name: 'tax_percent')  double? taxPercent, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'category_id')  String? categoryId)  $default,) {final _that = this;
switch (_that) {
case _ProductUpdate():
return $default(_that.name,_that.description,_that.price,_that.taxPercent,_that.isActive,_that.categoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? description,  double? price, @JsonKey(name: 'tax_percent')  double? taxPercent, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'category_id')  String? categoryId)?  $default,) {final _that = this;
switch (_that) {
case _ProductUpdate() when $default != null:
return $default(_that.name,_that.description,_that.price,_that.taxPercent,_that.isActive,_that.categoryId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductUpdate implements ProductUpdate {
  const _ProductUpdate({this.name, this.description, this.price, @JsonKey(name: 'tax_percent') this.taxPercent, @JsonKey(name: 'is_active') this.isActive, @JsonKey(name: 'category_id') this.categoryId});
  factory _ProductUpdate.fromJson(Map<String, dynamic> json) => _$ProductUpdateFromJson(json);

@override final  String? name;
@override final  String? description;
@override final  double? price;
@override@JsonKey(name: 'tax_percent') final  double? taxPercent;
@override@JsonKey(name: 'is_active') final  bool? isActive;
@override@JsonKey(name: 'category_id') final  String? categoryId;

/// Create a copy of ProductUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductUpdateCopyWith<_ProductUpdate> get copyWith => __$ProductUpdateCopyWithImpl<_ProductUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.taxPercent, taxPercent) || other.taxPercent == taxPercent)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,price,taxPercent,isActive,categoryId);

@override
String toString() {
  return 'ProductUpdate(name: $name, description: $description, price: $price, taxPercent: $taxPercent, isActive: $isActive, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$ProductUpdateCopyWith<$Res> implements $ProductUpdateCopyWith<$Res> {
  factory _$ProductUpdateCopyWith(_ProductUpdate value, $Res Function(_ProductUpdate) _then) = __$ProductUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? description, double? price,@JsonKey(name: 'tax_percent') double? taxPercent,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'category_id') String? categoryId
});




}
/// @nodoc
class __$ProductUpdateCopyWithImpl<$Res>
    implements _$ProductUpdateCopyWith<$Res> {
  __$ProductUpdateCopyWithImpl(this._self, this._then);

  final _ProductUpdate _self;
  final $Res Function(_ProductUpdate) _then;

/// Create a copy of ProductUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? description = freezed,Object? price = freezed,Object? taxPercent = freezed,Object? isActive = freezed,Object? categoryId = freezed,}) {
  return _then(_ProductUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,taxPercent: freezed == taxPercent ? _self.taxPercent : taxPercent // ignore: cast_nullable_to_non_nullable
as double?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CategoryCreate {

@JsonKey(name: 'store_id') String get storeId; String get name;
/// Create a copy of CategoryCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCreateCopyWith<CategoryCreate> get copyWith => _$CategoryCreateCopyWithImpl<CategoryCreate>(this as CategoryCreate, _$identity);

  /// Serializes this CategoryCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,name);

@override
String toString() {
  return 'CategoryCreate(storeId: $storeId, name: $name)';
}


}

/// @nodoc
abstract mixin class $CategoryCreateCopyWith<$Res>  {
  factory $CategoryCreateCopyWith(CategoryCreate value, $Res Function(CategoryCreate) _then) = _$CategoryCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId, String name
});




}
/// @nodoc
class _$CategoryCreateCopyWithImpl<$Res>
    implements $CategoryCreateCopyWith<$Res> {
  _$CategoryCreateCopyWithImpl(this._self, this._then);

  final CategoryCreate _self;
  final $Res Function(CategoryCreate) _then;

/// Create a copy of CategoryCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? name = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryCreate].
extension CategoryCreatePatterns on CategoryCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryCreate value)  $default,){
final _that = this;
switch (_that) {
case _CategoryCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryCreate value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryCreate() when $default != null:
return $default(_that.storeId,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId,  String name)  $default,) {final _that = this;
switch (_that) {
case _CategoryCreate():
return $default(_that.storeId,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId,  String name)?  $default,) {final _that = this;
switch (_that) {
case _CategoryCreate() when $default != null:
return $default(_that.storeId,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryCreate implements CategoryCreate {
  const _CategoryCreate({@JsonKey(name: 'store_id') required this.storeId, required this.name});
  factory _CategoryCreate.fromJson(Map<String, dynamic> json) => _$CategoryCreateFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override final  String name;

/// Create a copy of CategoryCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCreateCopyWith<_CategoryCreate> get copyWith => __$CategoryCreateCopyWithImpl<_CategoryCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,name);

@override
String toString() {
  return 'CategoryCreate(storeId: $storeId, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CategoryCreateCopyWith<$Res> implements $CategoryCreateCopyWith<$Res> {
  factory _$CategoryCreateCopyWith(_CategoryCreate value, $Res Function(_CategoryCreate) _then) = __$CategoryCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId, String name
});




}
/// @nodoc
class __$CategoryCreateCopyWithImpl<$Res>
    implements _$CategoryCreateCopyWith<$Res> {
  __$CategoryCreateCopyWithImpl(this._self, this._then);

  final _CategoryCreate _self;
  final $Res Function(_CategoryCreate) _then;

/// Create a copy of CategoryCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? name = null,}) {
  return _then(_CategoryCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
