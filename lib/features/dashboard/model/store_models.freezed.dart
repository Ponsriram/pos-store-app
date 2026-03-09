// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreCreate {

 String get name; String? get location; String? get phone; String? get email; String get timezone; String get currency;@JsonKey(name: 'tax_inclusive') bool get taxInclusive;
/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCreateCopyWith<StoreCreate> get copyWith => _$StoreCreateCopyWithImpl<StoreCreate>(this as StoreCreate, _$identity);

  /// Serializes this StoreCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCreate&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.taxInclusive, taxInclusive) || other.taxInclusive == taxInclusive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,location,phone,email,timezone,currency,taxInclusive);

@override
String toString() {
  return 'StoreCreate(name: $name, location: $location, phone: $phone, email: $email, timezone: $timezone, currency: $currency, taxInclusive: $taxInclusive)';
}


}

/// @nodoc
abstract mixin class $StoreCreateCopyWith<$Res>  {
  factory $StoreCreateCopyWith(StoreCreate value, $Res Function(StoreCreate) _then) = _$StoreCreateCopyWithImpl;
@useResult
$Res call({
 String name, String? location, String? phone, String? email, String timezone, String currency,@JsonKey(name: 'tax_inclusive') bool taxInclusive
});




}
/// @nodoc
class _$StoreCreateCopyWithImpl<$Res>
    implements $StoreCreateCopyWith<$Res> {
  _$StoreCreateCopyWithImpl(this._self, this._then);

  final StoreCreate _self;
  final $Res Function(StoreCreate) _then;

/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? location = freezed,Object? phone = freezed,Object? email = freezed,Object? timezone = null,Object? currency = null,Object? taxInclusive = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,taxInclusive: null == taxInclusive ? _self.taxInclusive : taxInclusive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreCreate].
extension StoreCreatePatterns on StoreCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreCreate value)  $default,){
final _that = this;
switch (_that) {
case _StoreCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreCreate value)?  $default,){
final _that = this;
switch (_that) {
case _StoreCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? location,  String? phone,  String? email,  String timezone,  String currency, @JsonKey(name: 'tax_inclusive')  bool taxInclusive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCreate() when $default != null:
return $default(_that.name,_that.location,_that.phone,_that.email,_that.timezone,_that.currency,_that.taxInclusive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? location,  String? phone,  String? email,  String timezone,  String currency, @JsonKey(name: 'tax_inclusive')  bool taxInclusive)  $default,) {final _that = this;
switch (_that) {
case _StoreCreate():
return $default(_that.name,_that.location,_that.phone,_that.email,_that.timezone,_that.currency,_that.taxInclusive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? location,  String? phone,  String? email,  String timezone,  String currency, @JsonKey(name: 'tax_inclusive')  bool taxInclusive)?  $default,) {final _that = this;
switch (_that) {
case _StoreCreate() when $default != null:
return $default(_that.name,_that.location,_that.phone,_that.email,_that.timezone,_that.currency,_that.taxInclusive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreCreate implements StoreCreate {
  const _StoreCreate({required this.name, this.location, this.phone, this.email, this.timezone = 'Asia/Kolkata', this.currency = 'INR', @JsonKey(name: 'tax_inclusive') this.taxInclusive = false});
  factory _StoreCreate.fromJson(Map<String, dynamic> json) => _$StoreCreateFromJson(json);

@override final  String name;
@override final  String? location;
@override final  String? phone;
@override final  String? email;
@override@JsonKey() final  String timezone;
@override@JsonKey() final  String currency;
@override@JsonKey(name: 'tax_inclusive') final  bool taxInclusive;

/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCreateCopyWith<_StoreCreate> get copyWith => __$StoreCreateCopyWithImpl<_StoreCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCreate&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.taxInclusive, taxInclusive) || other.taxInclusive == taxInclusive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,location,phone,email,timezone,currency,taxInclusive);

@override
String toString() {
  return 'StoreCreate(name: $name, location: $location, phone: $phone, email: $email, timezone: $timezone, currency: $currency, taxInclusive: $taxInclusive)';
}


}

/// @nodoc
abstract mixin class _$StoreCreateCopyWith<$Res> implements $StoreCreateCopyWith<$Res> {
  factory _$StoreCreateCopyWith(_StoreCreate value, $Res Function(_StoreCreate) _then) = __$StoreCreateCopyWithImpl;
@override @useResult
$Res call({
 String name, String? location, String? phone, String? email, String timezone, String currency,@JsonKey(name: 'tax_inclusive') bool taxInclusive
});




}
/// @nodoc
class __$StoreCreateCopyWithImpl<$Res>
    implements _$StoreCreateCopyWith<$Res> {
  __$StoreCreateCopyWithImpl(this._self, this._then);

  final _StoreCreate _self;
  final $Res Function(_StoreCreate) _then;

/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? location = freezed,Object? phone = freezed,Object? email = freezed,Object? timezone = null,Object? currency = null,Object? taxInclusive = null,}) {
  return _then(_StoreCreate(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,taxInclusive: null == taxInclusive ? _self.taxInclusive : taxInclusive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$POSTerminalCreate {

@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'device_name') String get deviceName;@JsonKey(name: 'device_identifier') String get deviceIdentifier;
/// Create a copy of POSTerminalCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$POSTerminalCreateCopyWith<POSTerminalCreate> get copyWith => _$POSTerminalCreateCopyWithImpl<POSTerminalCreate>(this as POSTerminalCreate, _$identity);

  /// Serializes this POSTerminalCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is POSTerminalCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.deviceIdentifier, deviceIdentifier) || other.deviceIdentifier == deviceIdentifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,deviceName,deviceIdentifier);

@override
String toString() {
  return 'POSTerminalCreate(storeId: $storeId, deviceName: $deviceName, deviceIdentifier: $deviceIdentifier)';
}


}

/// @nodoc
abstract mixin class $POSTerminalCreateCopyWith<$Res>  {
  factory $POSTerminalCreateCopyWith(POSTerminalCreate value, $Res Function(POSTerminalCreate) _then) = _$POSTerminalCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'device_name') String deviceName,@JsonKey(name: 'device_identifier') String deviceIdentifier
});




}
/// @nodoc
class _$POSTerminalCreateCopyWithImpl<$Res>
    implements $POSTerminalCreateCopyWith<$Res> {
  _$POSTerminalCreateCopyWithImpl(this._self, this._then);

  final POSTerminalCreate _self;
  final $Res Function(POSTerminalCreate) _then;

/// Create a copy of POSTerminalCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? deviceName = null,Object? deviceIdentifier = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,deviceIdentifier: null == deviceIdentifier ? _self.deviceIdentifier : deviceIdentifier // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [POSTerminalCreate].
extension POSTerminalCreatePatterns on POSTerminalCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _POSTerminalCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _POSTerminalCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _POSTerminalCreate value)  $default,){
final _that = this;
switch (_that) {
case _POSTerminalCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _POSTerminalCreate value)?  $default,){
final _that = this;
switch (_that) {
case _POSTerminalCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'device_name')  String deviceName, @JsonKey(name: 'device_identifier')  String deviceIdentifier)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _POSTerminalCreate() when $default != null:
return $default(_that.storeId,_that.deviceName,_that.deviceIdentifier);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'device_name')  String deviceName, @JsonKey(name: 'device_identifier')  String deviceIdentifier)  $default,) {final _that = this;
switch (_that) {
case _POSTerminalCreate():
return $default(_that.storeId,_that.deviceName,_that.deviceIdentifier);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'device_name')  String deviceName, @JsonKey(name: 'device_identifier')  String deviceIdentifier)?  $default,) {final _that = this;
switch (_that) {
case _POSTerminalCreate() when $default != null:
return $default(_that.storeId,_that.deviceName,_that.deviceIdentifier);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _POSTerminalCreate implements POSTerminalCreate {
  const _POSTerminalCreate({@JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'device_name') required this.deviceName, @JsonKey(name: 'device_identifier') required this.deviceIdentifier});
  factory _POSTerminalCreate.fromJson(Map<String, dynamic> json) => _$POSTerminalCreateFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'device_name') final  String deviceName;
@override@JsonKey(name: 'device_identifier') final  String deviceIdentifier;

/// Create a copy of POSTerminalCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$POSTerminalCreateCopyWith<_POSTerminalCreate> get copyWith => __$POSTerminalCreateCopyWithImpl<_POSTerminalCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$POSTerminalCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _POSTerminalCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.deviceIdentifier, deviceIdentifier) || other.deviceIdentifier == deviceIdentifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,deviceName,deviceIdentifier);

@override
String toString() {
  return 'POSTerminalCreate(storeId: $storeId, deviceName: $deviceName, deviceIdentifier: $deviceIdentifier)';
}


}

/// @nodoc
abstract mixin class _$POSTerminalCreateCopyWith<$Res> implements $POSTerminalCreateCopyWith<$Res> {
  factory _$POSTerminalCreateCopyWith(_POSTerminalCreate value, $Res Function(_POSTerminalCreate) _then) = __$POSTerminalCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'device_name') String deviceName,@JsonKey(name: 'device_identifier') String deviceIdentifier
});




}
/// @nodoc
class __$POSTerminalCreateCopyWithImpl<$Res>
    implements _$POSTerminalCreateCopyWith<$Res> {
  __$POSTerminalCreateCopyWithImpl(this._self, this._then);

  final _POSTerminalCreate _self;
  final $Res Function(_POSTerminalCreate) _then;

/// Create a copy of POSTerminalCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? deviceName = null,Object? deviceIdentifier = null,}) {
  return _then(_POSTerminalCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,deviceIdentifier: null == deviceIdentifier ? _self.deviceIdentifier : deviceIdentifier // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$POSTerminalResponse {

 String get id;@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'device_name') String get deviceName;@JsonKey(name: 'device_identifier') String get deviceIdentifier;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of POSTerminalResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$POSTerminalResponseCopyWith<POSTerminalResponse> get copyWith => _$POSTerminalResponseCopyWithImpl<POSTerminalResponse>(this as POSTerminalResponse, _$identity);

  /// Serializes this POSTerminalResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is POSTerminalResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.deviceIdentifier, deviceIdentifier) || other.deviceIdentifier == deviceIdentifier)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,deviceName,deviceIdentifier,isActive,createdAt);

@override
String toString() {
  return 'POSTerminalResponse(id: $id, storeId: $storeId, deviceName: $deviceName, deviceIdentifier: $deviceIdentifier, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $POSTerminalResponseCopyWith<$Res>  {
  factory $POSTerminalResponseCopyWith(POSTerminalResponse value, $Res Function(POSTerminalResponse) _then) = _$POSTerminalResponseCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'device_name') String deviceName,@JsonKey(name: 'device_identifier') String deviceIdentifier,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$POSTerminalResponseCopyWithImpl<$Res>
    implements $POSTerminalResponseCopyWith<$Res> {
  _$POSTerminalResponseCopyWithImpl(this._self, this._then);

  final POSTerminalResponse _self;
  final $Res Function(POSTerminalResponse) _then;

/// Create a copy of POSTerminalResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? deviceName = null,Object? deviceIdentifier = null,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,deviceIdentifier: null == deviceIdentifier ? _self.deviceIdentifier : deviceIdentifier // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [POSTerminalResponse].
extension POSTerminalResponsePatterns on POSTerminalResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _POSTerminalResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _POSTerminalResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _POSTerminalResponse value)  $default,){
final _that = this;
switch (_that) {
case _POSTerminalResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _POSTerminalResponse value)?  $default,){
final _that = this;
switch (_that) {
case _POSTerminalResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'device_name')  String deviceName, @JsonKey(name: 'device_identifier')  String deviceIdentifier, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _POSTerminalResponse() when $default != null:
return $default(_that.id,_that.storeId,_that.deviceName,_that.deviceIdentifier,_that.isActive,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'device_name')  String deviceName, @JsonKey(name: 'device_identifier')  String deviceIdentifier, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _POSTerminalResponse():
return $default(_that.id,_that.storeId,_that.deviceName,_that.deviceIdentifier,_that.isActive,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'device_name')  String deviceName, @JsonKey(name: 'device_identifier')  String deviceIdentifier, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _POSTerminalResponse() when $default != null:
return $default(_that.id,_that.storeId,_that.deviceName,_that.deviceIdentifier,_that.isActive,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _POSTerminalResponse implements POSTerminalResponse {
  const _POSTerminalResponse({required this.id, @JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'device_name') required this.deviceName, @JsonKey(name: 'device_identifier') required this.deviceIdentifier, @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'created_at') this.createdAt});
  factory _POSTerminalResponse.fromJson(Map<String, dynamic> json) => _$POSTerminalResponseFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'device_name') final  String deviceName;
@override@JsonKey(name: 'device_identifier') final  String deviceIdentifier;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of POSTerminalResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$POSTerminalResponseCopyWith<_POSTerminalResponse> get copyWith => __$POSTerminalResponseCopyWithImpl<_POSTerminalResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$POSTerminalResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _POSTerminalResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.deviceIdentifier, deviceIdentifier) || other.deviceIdentifier == deviceIdentifier)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,deviceName,deviceIdentifier,isActive,createdAt);

@override
String toString() {
  return 'POSTerminalResponse(id: $id, storeId: $storeId, deviceName: $deviceName, deviceIdentifier: $deviceIdentifier, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$POSTerminalResponseCopyWith<$Res> implements $POSTerminalResponseCopyWith<$Res> {
  factory _$POSTerminalResponseCopyWith(_POSTerminalResponse value, $Res Function(_POSTerminalResponse) _then) = __$POSTerminalResponseCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'device_name') String deviceName,@JsonKey(name: 'device_identifier') String deviceIdentifier,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$POSTerminalResponseCopyWithImpl<$Res>
    implements _$POSTerminalResponseCopyWith<$Res> {
  __$POSTerminalResponseCopyWithImpl(this._self, this._then);

  final _POSTerminalResponse _self;
  final $Res Function(_POSTerminalResponse) _then;

/// Create a copy of POSTerminalResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? deviceName = null,Object? deviceIdentifier = null,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_POSTerminalResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,deviceIdentifier: null == deviceIdentifier ? _self.deviceIdentifier : deviceIdentifier // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$DineInTableCreate {

@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'table_number') int get tableNumber; String? get label; int get capacity; String get status; String? get section;
/// Create a copy of DineInTableCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DineInTableCreateCopyWith<DineInTableCreate> get copyWith => _$DineInTableCreateCopyWithImpl<DineInTableCreate>(this as DineInTableCreate, _$identity);

  /// Serializes this DineInTableCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DineInTableCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.tableNumber, tableNumber) || other.tableNumber == tableNumber)&&(identical(other.label, label) || other.label == label)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.status, status) || other.status == status)&&(identical(other.section, section) || other.section == section));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,tableNumber,label,capacity,status,section);

@override
String toString() {
  return 'DineInTableCreate(storeId: $storeId, tableNumber: $tableNumber, label: $label, capacity: $capacity, status: $status, section: $section)';
}


}

/// @nodoc
abstract mixin class $DineInTableCreateCopyWith<$Res>  {
  factory $DineInTableCreateCopyWith(DineInTableCreate value, $Res Function(DineInTableCreate) _then) = _$DineInTableCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'table_number') int tableNumber, String? label, int capacity, String status, String? section
});




}
/// @nodoc
class _$DineInTableCreateCopyWithImpl<$Res>
    implements $DineInTableCreateCopyWith<$Res> {
  _$DineInTableCreateCopyWithImpl(this._self, this._then);

  final DineInTableCreate _self;
  final $Res Function(DineInTableCreate) _then;

/// Create a copy of DineInTableCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? tableNumber = null,Object? label = freezed,Object? capacity = null,Object? status = null,Object? section = freezed,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,tableNumber: null == tableNumber ? _self.tableNumber : tableNumber // ignore: cast_nullable_to_non_nullable
as int,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DineInTableCreate].
extension DineInTableCreatePatterns on DineInTableCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DineInTableCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DineInTableCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DineInTableCreate value)  $default,){
final _that = this;
switch (_that) {
case _DineInTableCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DineInTableCreate value)?  $default,){
final _that = this;
switch (_that) {
case _DineInTableCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'table_number')  int tableNumber,  String? label,  int capacity,  String status,  String? section)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DineInTableCreate() when $default != null:
return $default(_that.storeId,_that.tableNumber,_that.label,_that.capacity,_that.status,_that.section);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'table_number')  int tableNumber,  String? label,  int capacity,  String status,  String? section)  $default,) {final _that = this;
switch (_that) {
case _DineInTableCreate():
return $default(_that.storeId,_that.tableNumber,_that.label,_that.capacity,_that.status,_that.section);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'table_number')  int tableNumber,  String? label,  int capacity,  String status,  String? section)?  $default,) {final _that = this;
switch (_that) {
case _DineInTableCreate() when $default != null:
return $default(_that.storeId,_that.tableNumber,_that.label,_that.capacity,_that.status,_that.section);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DineInTableCreate implements DineInTableCreate {
  const _DineInTableCreate({@JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'table_number') required this.tableNumber, this.label, this.capacity = 4, this.status = 'available', this.section});
  factory _DineInTableCreate.fromJson(Map<String, dynamic> json) => _$DineInTableCreateFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'table_number') final  int tableNumber;
@override final  String? label;
@override@JsonKey() final  int capacity;
@override@JsonKey() final  String status;
@override final  String? section;

/// Create a copy of DineInTableCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DineInTableCreateCopyWith<_DineInTableCreate> get copyWith => __$DineInTableCreateCopyWithImpl<_DineInTableCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DineInTableCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DineInTableCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.tableNumber, tableNumber) || other.tableNumber == tableNumber)&&(identical(other.label, label) || other.label == label)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.status, status) || other.status == status)&&(identical(other.section, section) || other.section == section));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,tableNumber,label,capacity,status,section);

@override
String toString() {
  return 'DineInTableCreate(storeId: $storeId, tableNumber: $tableNumber, label: $label, capacity: $capacity, status: $status, section: $section)';
}


}

/// @nodoc
abstract mixin class _$DineInTableCreateCopyWith<$Res> implements $DineInTableCreateCopyWith<$Res> {
  factory _$DineInTableCreateCopyWith(_DineInTableCreate value, $Res Function(_DineInTableCreate) _then) = __$DineInTableCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'table_number') int tableNumber, String? label, int capacity, String status, String? section
});




}
/// @nodoc
class __$DineInTableCreateCopyWithImpl<$Res>
    implements _$DineInTableCreateCopyWith<$Res> {
  __$DineInTableCreateCopyWithImpl(this._self, this._then);

  final _DineInTableCreate _self;
  final $Res Function(_DineInTableCreate) _then;

/// Create a copy of DineInTableCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? tableNumber = null,Object? label = freezed,Object? capacity = null,Object? status = null,Object? section = freezed,}) {
  return _then(_DineInTableCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,tableNumber: null == tableNumber ? _self.tableNumber : tableNumber // ignore: cast_nullable_to_non_nullable
as int,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DineInTableResponse {

 String get id;@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'table_number') int get tableNumber; String? get label; int get capacity; String get status; String? get section;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of DineInTableResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DineInTableResponseCopyWith<DineInTableResponse> get copyWith => _$DineInTableResponseCopyWithImpl<DineInTableResponse>(this as DineInTableResponse, _$identity);

  /// Serializes this DineInTableResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DineInTableResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.tableNumber, tableNumber) || other.tableNumber == tableNumber)&&(identical(other.label, label) || other.label == label)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.status, status) || other.status == status)&&(identical(other.section, section) || other.section == section)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,tableNumber,label,capacity,status,section,isActive,createdAt);

@override
String toString() {
  return 'DineInTableResponse(id: $id, storeId: $storeId, tableNumber: $tableNumber, label: $label, capacity: $capacity, status: $status, section: $section, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DineInTableResponseCopyWith<$Res>  {
  factory $DineInTableResponseCopyWith(DineInTableResponse value, $Res Function(DineInTableResponse) _then) = _$DineInTableResponseCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'table_number') int tableNumber, String? label, int capacity, String status, String? section,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$DineInTableResponseCopyWithImpl<$Res>
    implements $DineInTableResponseCopyWith<$Res> {
  _$DineInTableResponseCopyWithImpl(this._self, this._then);

  final DineInTableResponse _self;
  final $Res Function(DineInTableResponse) _then;

/// Create a copy of DineInTableResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? tableNumber = null,Object? label = freezed,Object? capacity = null,Object? status = null,Object? section = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,tableNumber: null == tableNumber ? _self.tableNumber : tableNumber // ignore: cast_nullable_to_non_nullable
as int,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DineInTableResponse].
extension DineInTableResponsePatterns on DineInTableResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DineInTableResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DineInTableResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DineInTableResponse value)  $default,){
final _that = this;
switch (_that) {
case _DineInTableResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DineInTableResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DineInTableResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'table_number')  int tableNumber,  String? label,  int capacity,  String status,  String? section, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DineInTableResponse() when $default != null:
return $default(_that.id,_that.storeId,_that.tableNumber,_that.label,_that.capacity,_that.status,_that.section,_that.isActive,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'table_number')  int tableNumber,  String? label,  int capacity,  String status,  String? section, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _DineInTableResponse():
return $default(_that.id,_that.storeId,_that.tableNumber,_that.label,_that.capacity,_that.status,_that.section,_that.isActive,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'table_number')  int tableNumber,  String? label,  int capacity,  String status,  String? section, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DineInTableResponse() when $default != null:
return $default(_that.id,_that.storeId,_that.tableNumber,_that.label,_that.capacity,_that.status,_that.section,_that.isActive,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DineInTableResponse implements DineInTableResponse {
  const _DineInTableResponse({required this.id, @JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'table_number') required this.tableNumber, this.label, this.capacity = 4, this.status = 'available', this.section, @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'created_at') this.createdAt});
  factory _DineInTableResponse.fromJson(Map<String, dynamic> json) => _$DineInTableResponseFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'table_number') final  int tableNumber;
@override final  String? label;
@override@JsonKey() final  int capacity;
@override@JsonKey() final  String status;
@override final  String? section;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of DineInTableResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DineInTableResponseCopyWith<_DineInTableResponse> get copyWith => __$DineInTableResponseCopyWithImpl<_DineInTableResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DineInTableResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DineInTableResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.tableNumber, tableNumber) || other.tableNumber == tableNumber)&&(identical(other.label, label) || other.label == label)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.status, status) || other.status == status)&&(identical(other.section, section) || other.section == section)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,tableNumber,label,capacity,status,section,isActive,createdAt);

@override
String toString() {
  return 'DineInTableResponse(id: $id, storeId: $storeId, tableNumber: $tableNumber, label: $label, capacity: $capacity, status: $status, section: $section, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DineInTableResponseCopyWith<$Res> implements $DineInTableResponseCopyWith<$Res> {
  factory _$DineInTableResponseCopyWith(_DineInTableResponse value, $Res Function(_DineInTableResponse) _then) = __$DineInTableResponseCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'table_number') int tableNumber, String? label, int capacity, String status, String? section,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$DineInTableResponseCopyWithImpl<$Res>
    implements _$DineInTableResponseCopyWith<$Res> {
  __$DineInTableResponseCopyWithImpl(this._self, this._then);

  final _DineInTableResponse _self;
  final $Res Function(_DineInTableResponse) _then;

/// Create a copy of DineInTableResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? tableNumber = null,Object? label = freezed,Object? capacity = null,Object? status = null,Object? section = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_DineInTableResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,tableNumber: null == tableNumber ? _self.tableNumber : tableNumber // ignore: cast_nullable_to_non_nullable
as int,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
