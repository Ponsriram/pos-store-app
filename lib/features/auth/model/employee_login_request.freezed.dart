// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeeLoginRequest {

@JsonKey(name: 'employee_code') String get employeeCode; String get pin;@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'terminal_id') String get terminalId;
/// Create a copy of EmployeeLoginRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeLoginRequestCopyWith<EmployeeLoginRequest> get copyWith => _$EmployeeLoginRequestCopyWithImpl<EmployeeLoginRequest>(this as EmployeeLoginRequest, _$identity);

  /// Serializes this EmployeeLoginRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeLoginRequest&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.pin, pin) || other.pin == pin)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeCode,pin,storeId,terminalId);

@override
String toString() {
  return 'EmployeeLoginRequest(employeeCode: $employeeCode, pin: $pin, storeId: $storeId, terminalId: $terminalId)';
}


}

/// @nodoc
abstract mixin class $EmployeeLoginRequestCopyWith<$Res>  {
  factory $EmployeeLoginRequestCopyWith(EmployeeLoginRequest value, $Res Function(EmployeeLoginRequest) _then) = _$EmployeeLoginRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'employee_code') String employeeCode, String pin,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'terminal_id') String terminalId
});




}
/// @nodoc
class _$EmployeeLoginRequestCopyWithImpl<$Res>
    implements $EmployeeLoginRequestCopyWith<$Res> {
  _$EmployeeLoginRequestCopyWithImpl(this._self, this._then);

  final EmployeeLoginRequest _self;
  final $Res Function(EmployeeLoginRequest) _then;

/// Create a copy of EmployeeLoginRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employeeCode = null,Object? pin = null,Object? storeId = null,Object? terminalId = null,}) {
  return _then(_self.copyWith(
employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,terminalId: null == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeLoginRequest].
extension EmployeeLoginRequestPatterns on EmployeeLoginRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeLoginRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeLoginRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeLoginRequest value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeLoginRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeLoginRequest value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeLoginRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'employee_code')  String employeeCode,  String pin, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'terminal_id')  String terminalId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeLoginRequest() when $default != null:
return $default(_that.employeeCode,_that.pin,_that.storeId,_that.terminalId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'employee_code')  String employeeCode,  String pin, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'terminal_id')  String terminalId)  $default,) {final _that = this;
switch (_that) {
case _EmployeeLoginRequest():
return $default(_that.employeeCode,_that.pin,_that.storeId,_that.terminalId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'employee_code')  String employeeCode,  String pin, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'terminal_id')  String terminalId)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeLoginRequest() when $default != null:
return $default(_that.employeeCode,_that.pin,_that.storeId,_that.terminalId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeLoginRequest implements EmployeeLoginRequest {
  const _EmployeeLoginRequest({@JsonKey(name: 'employee_code') required this.employeeCode, required this.pin, @JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'terminal_id') required this.terminalId});
  factory _EmployeeLoginRequest.fromJson(Map<String, dynamic> json) => _$EmployeeLoginRequestFromJson(json);

@override@JsonKey(name: 'employee_code') final  String employeeCode;
@override final  String pin;
@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'terminal_id') final  String terminalId;

/// Create a copy of EmployeeLoginRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeLoginRequestCopyWith<_EmployeeLoginRequest> get copyWith => __$EmployeeLoginRequestCopyWithImpl<_EmployeeLoginRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeLoginRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeLoginRequest&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.pin, pin) || other.pin == pin)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeCode,pin,storeId,terminalId);

@override
String toString() {
  return 'EmployeeLoginRequest(employeeCode: $employeeCode, pin: $pin, storeId: $storeId, terminalId: $terminalId)';
}


}

/// @nodoc
abstract mixin class _$EmployeeLoginRequestCopyWith<$Res> implements $EmployeeLoginRequestCopyWith<$Res> {
  factory _$EmployeeLoginRequestCopyWith(_EmployeeLoginRequest value, $Res Function(_EmployeeLoginRequest) _then) = __$EmployeeLoginRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'employee_code') String employeeCode, String pin,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'terminal_id') String terminalId
});




}
/// @nodoc
class __$EmployeeLoginRequestCopyWithImpl<$Res>
    implements _$EmployeeLoginRequestCopyWith<$Res> {
  __$EmployeeLoginRequestCopyWithImpl(this._self, this._then);

  final _EmployeeLoginRequest _self;
  final $Res Function(_EmployeeLoginRequest) _then;

/// Create a copy of EmployeeLoginRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeCode = null,Object? pin = null,Object? storeId = null,Object? terminalId = null,}) {
  return _then(_EmployeeLoginRequest(
employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,terminalId: null == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
