// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DineInTable {

 String get id;@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'table_number') int get tableNumber; String? get label; int get capacity; String get status;@JsonKey(name: 'qr_code') String? get qrCode;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of DineInTable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DineInTableCopyWith<DineInTable> get copyWith => _$DineInTableCopyWithImpl<DineInTable>(this as DineInTable, _$identity);

  /// Serializes this DineInTable to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DineInTable&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.tableNumber, tableNumber) || other.tableNumber == tableNumber)&&(identical(other.label, label) || other.label == label)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.status, status) || other.status == status)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,tableNumber,label,capacity,status,qrCode,createdAt);

@override
String toString() {
  return 'DineInTable(id: $id, storeId: $storeId, tableNumber: $tableNumber, label: $label, capacity: $capacity, status: $status, qrCode: $qrCode, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DineInTableCopyWith<$Res>  {
  factory $DineInTableCopyWith(DineInTable value, $Res Function(DineInTable) _then) = _$DineInTableCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'table_number') int tableNumber, String? label, int capacity, String status,@JsonKey(name: 'qr_code') String? qrCode,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$DineInTableCopyWithImpl<$Res>
    implements $DineInTableCopyWith<$Res> {
  _$DineInTableCopyWithImpl(this._self, this._then);

  final DineInTable _self;
  final $Res Function(DineInTable) _then;

/// Create a copy of DineInTable
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? tableNumber = null,Object? label = freezed,Object? capacity = null,Object? status = null,Object? qrCode = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,tableNumber: null == tableNumber ? _self.tableNumber : tableNumber // ignore: cast_nullable_to_non_nullable
as int,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DineInTable].
extension DineInTablePatterns on DineInTable {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DineInTable value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DineInTable() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DineInTable value)  $default,){
final _that = this;
switch (_that) {
case _DineInTable():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DineInTable value)?  $default,){
final _that = this;
switch (_that) {
case _DineInTable() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'table_number')  int tableNumber,  String? label,  int capacity,  String status, @JsonKey(name: 'qr_code')  String? qrCode, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DineInTable() when $default != null:
return $default(_that.id,_that.storeId,_that.tableNumber,_that.label,_that.capacity,_that.status,_that.qrCode,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'table_number')  int tableNumber,  String? label,  int capacity,  String status, @JsonKey(name: 'qr_code')  String? qrCode, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _DineInTable():
return $default(_that.id,_that.storeId,_that.tableNumber,_that.label,_that.capacity,_that.status,_that.qrCode,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'table_number')  int tableNumber,  String? label,  int capacity,  String status, @JsonKey(name: 'qr_code')  String? qrCode, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DineInTable() when $default != null:
return $default(_that.id,_that.storeId,_that.tableNumber,_that.label,_that.capacity,_that.status,_that.qrCode,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DineInTable implements DineInTable {
  const _DineInTable({required this.id, @JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'table_number') required this.tableNumber, this.label, this.capacity = 4, this.status = 'available', @JsonKey(name: 'qr_code') this.qrCode, @JsonKey(name: 'created_at') this.createdAt});
  factory _DineInTable.fromJson(Map<String, dynamic> json) => _$DineInTableFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'table_number') final  int tableNumber;
@override final  String? label;
@override@JsonKey() final  int capacity;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'qr_code') final  String? qrCode;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of DineInTable
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DineInTableCopyWith<_DineInTable> get copyWith => __$DineInTableCopyWithImpl<_DineInTable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DineInTableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DineInTable&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.tableNumber, tableNumber) || other.tableNumber == tableNumber)&&(identical(other.label, label) || other.label == label)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.status, status) || other.status == status)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,tableNumber,label,capacity,status,qrCode,createdAt);

@override
String toString() {
  return 'DineInTable(id: $id, storeId: $storeId, tableNumber: $tableNumber, label: $label, capacity: $capacity, status: $status, qrCode: $qrCode, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DineInTableCopyWith<$Res> implements $DineInTableCopyWith<$Res> {
  factory _$DineInTableCopyWith(_DineInTable value, $Res Function(_DineInTable) _then) = __$DineInTableCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'table_number') int tableNumber, String? label, int capacity, String status,@JsonKey(name: 'qr_code') String? qrCode,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$DineInTableCopyWithImpl<$Res>
    implements _$DineInTableCopyWith<$Res> {
  __$DineInTableCopyWithImpl(this._self, this._then);

  final _DineInTable _self;
  final $Res Function(_DineInTable) _then;

/// Create a copy of DineInTable
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? tableNumber = null,Object? label = freezed,Object? capacity = null,Object? status = null,Object? qrCode = freezed,Object? createdAt = freezed,}) {
  return _then(_DineInTable(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,tableNumber: null == tableNumber ? _self.tableNumber : tableNumber // ignore: cast_nullable_to_non_nullable
as int,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
