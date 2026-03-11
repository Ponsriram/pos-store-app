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

@JsonKey(name: 'table_number') int get tableNumber;@JsonKey(name: 'table_label') String get label;
/// Create a copy of DineInTable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DineInTableCopyWith<DineInTable> get copyWith => _$DineInTableCopyWithImpl<DineInTable>(this as DineInTable, _$identity);

  /// Serializes this DineInTable to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DineInTable&&(identical(other.tableNumber, tableNumber) || other.tableNumber == tableNumber)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tableNumber,label);

@override
String toString() {
  return 'DineInTable(tableNumber: $tableNumber, label: $label)';
}


}

/// @nodoc
abstract mixin class $DineInTableCopyWith<$Res>  {
  factory $DineInTableCopyWith(DineInTable value, $Res Function(DineInTable) _then) = _$DineInTableCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'table_number') int tableNumber,@JsonKey(name: 'table_label') String label
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
@pragma('vm:prefer-inline') @override $Res call({Object? tableNumber = null,Object? label = null,}) {
  return _then(_self.copyWith(
tableNumber: null == tableNumber ? _self.tableNumber : tableNumber // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'table_number')  int tableNumber, @JsonKey(name: 'table_label')  String label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DineInTable() when $default != null:
return $default(_that.tableNumber,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'table_number')  int tableNumber, @JsonKey(name: 'table_label')  String label)  $default,) {final _that = this;
switch (_that) {
case _DineInTable():
return $default(_that.tableNumber,_that.label);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'table_number')  int tableNumber, @JsonKey(name: 'table_label')  String label)?  $default,) {final _that = this;
switch (_that) {
case _DineInTable() when $default != null:
return $default(_that.tableNumber,_that.label);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DineInTable implements DineInTable {
  const _DineInTable({@JsonKey(name: 'table_number') required this.tableNumber, @JsonKey(name: 'table_label') this.label = ''});
  factory _DineInTable.fromJson(Map<String, dynamic> json) => _$DineInTableFromJson(json);

@override@JsonKey(name: 'table_number') final  int tableNumber;
@override@JsonKey(name: 'table_label') final  String label;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DineInTable&&(identical(other.tableNumber, tableNumber) || other.tableNumber == tableNumber)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tableNumber,label);

@override
String toString() {
  return 'DineInTable(tableNumber: $tableNumber, label: $label)';
}


}

/// @nodoc
abstract mixin class _$DineInTableCopyWith<$Res> implements $DineInTableCopyWith<$Res> {
  factory _$DineInTableCopyWith(_DineInTable value, $Res Function(_DineInTable) _then) = __$DineInTableCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'table_number') int tableNumber,@JsonKey(name: 'table_label') String label
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
@override @pragma('vm:prefer-inline') $Res call({Object? tableNumber = null,Object? label = null,}) {
  return _then(_DineInTable(
tableNumber: null == tableNumber ? _self.tableNumber : tableNumber // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StoreTablesResponse {

@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'table_count') int get tableCount; List<DineInTable> get tables;
/// Create a copy of StoreTablesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreTablesResponseCopyWith<StoreTablesResponse> get copyWith => _$StoreTablesResponseCopyWithImpl<StoreTablesResponse>(this as StoreTablesResponse, _$identity);

  /// Serializes this StoreTablesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreTablesResponse&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.tableCount, tableCount) || other.tableCount == tableCount)&&const DeepCollectionEquality().equals(other.tables, tables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,tableCount,const DeepCollectionEquality().hash(tables));

@override
String toString() {
  return 'StoreTablesResponse(storeId: $storeId, tableCount: $tableCount, tables: $tables)';
}


}

/// @nodoc
abstract mixin class $StoreTablesResponseCopyWith<$Res>  {
  factory $StoreTablesResponseCopyWith(StoreTablesResponse value, $Res Function(StoreTablesResponse) _then) = _$StoreTablesResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'table_count') int tableCount, List<DineInTable> tables
});




}
/// @nodoc
class _$StoreTablesResponseCopyWithImpl<$Res>
    implements $StoreTablesResponseCopyWith<$Res> {
  _$StoreTablesResponseCopyWithImpl(this._self, this._then);

  final StoreTablesResponse _self;
  final $Res Function(StoreTablesResponse) _then;

/// Create a copy of StoreTablesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? tableCount = null,Object? tables = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,tableCount: null == tableCount ? _self.tableCount : tableCount // ignore: cast_nullable_to_non_nullable
as int,tables: null == tables ? _self.tables : tables // ignore: cast_nullable_to_non_nullable
as List<DineInTable>,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreTablesResponse].
extension StoreTablesResponsePatterns on StoreTablesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreTablesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreTablesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreTablesResponse value)  $default,){
final _that = this;
switch (_that) {
case _StoreTablesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreTablesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _StoreTablesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'table_count')  int tableCount,  List<DineInTable> tables)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreTablesResponse() when $default != null:
return $default(_that.storeId,_that.tableCount,_that.tables);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'table_count')  int tableCount,  List<DineInTable> tables)  $default,) {final _that = this;
switch (_that) {
case _StoreTablesResponse():
return $default(_that.storeId,_that.tableCount,_that.tables);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'table_count')  int tableCount,  List<DineInTable> tables)?  $default,) {final _that = this;
switch (_that) {
case _StoreTablesResponse() when $default != null:
return $default(_that.storeId,_that.tableCount,_that.tables);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreTablesResponse implements StoreTablesResponse {
  const _StoreTablesResponse({@JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'table_count') this.tableCount = 0, final  List<DineInTable> tables = const []}): _tables = tables;
  factory _StoreTablesResponse.fromJson(Map<String, dynamic> json) => _$StoreTablesResponseFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'table_count') final  int tableCount;
 final  List<DineInTable> _tables;
@override@JsonKey() List<DineInTable> get tables {
  if (_tables is EqualUnmodifiableListView) return _tables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tables);
}


/// Create a copy of StoreTablesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreTablesResponseCopyWith<_StoreTablesResponse> get copyWith => __$StoreTablesResponseCopyWithImpl<_StoreTablesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreTablesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreTablesResponse&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.tableCount, tableCount) || other.tableCount == tableCount)&&const DeepCollectionEquality().equals(other._tables, _tables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,tableCount,const DeepCollectionEquality().hash(_tables));

@override
String toString() {
  return 'StoreTablesResponse(storeId: $storeId, tableCount: $tableCount, tables: $tables)';
}


}

/// @nodoc
abstract mixin class _$StoreTablesResponseCopyWith<$Res> implements $StoreTablesResponseCopyWith<$Res> {
  factory _$StoreTablesResponseCopyWith(_StoreTablesResponse value, $Res Function(_StoreTablesResponse) _then) = __$StoreTablesResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'table_count') int tableCount, List<DineInTable> tables
});




}
/// @nodoc
class __$StoreTablesResponseCopyWithImpl<$Res>
    implements _$StoreTablesResponseCopyWith<$Res> {
  __$StoreTablesResponseCopyWithImpl(this._self, this._then);

  final _StoreTablesResponse _self;
  final $Res Function(_StoreTablesResponse) _then;

/// Create a copy of StoreTablesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? tableCount = null,Object? tables = null,}) {
  return _then(_StoreTablesResponse(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,tableCount: null == tableCount ? _self.tableCount : tableCount // ignore: cast_nullable_to_non_nullable
as int,tables: null == tables ? _self._tables : tables // ignore: cast_nullable_to_non_nullable
as List<DineInTable>,
  ));
}


}

// dart format on
