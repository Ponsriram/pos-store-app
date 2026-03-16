// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeeLoginResponse {

@JsonKey(name: 'access_token') String get accessToken;@JsonKey(name: 'employee_id') String get employeeId;@JsonKey(name: 'employee_name') String? get employeeName;@JsonKey(defaultValue: 'Cashier') String? get role;
/// Create a copy of EmployeeLoginResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeLoginResponseCopyWith<EmployeeLoginResponse> get copyWith => _$EmployeeLoginResponseCopyWithImpl<EmployeeLoginResponse>(this as EmployeeLoginResponse, _$identity);

  /// Serializes this EmployeeLoginResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeLoginResponse&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,employeeId,employeeName,role);

@override
String toString() {
  return 'EmployeeLoginResponse(accessToken: $accessToken, employeeId: $employeeId, employeeName: $employeeName, role: $role)';
}


}

/// @nodoc
abstract mixin class $EmployeeLoginResponseCopyWith<$Res>  {
  factory $EmployeeLoginResponseCopyWith(EmployeeLoginResponse value, $Res Function(EmployeeLoginResponse) _then) = _$EmployeeLoginResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'access_token') String accessToken,@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'employee_name') String? employeeName,@JsonKey(defaultValue: 'Cashier') String? role
});




}
/// @nodoc
class _$EmployeeLoginResponseCopyWithImpl<$Res>
    implements $EmployeeLoginResponseCopyWith<$Res> {
  _$EmployeeLoginResponseCopyWithImpl(this._self, this._then);

  final EmployeeLoginResponse _self;
  final $Res Function(EmployeeLoginResponse) _then;

/// Create a copy of EmployeeLoginResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? employeeId = null,Object? employeeName = freezed,Object? role = freezed,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,employeeName: freezed == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeLoginResponse].
extension EmployeeLoginResponsePatterns on EmployeeLoginResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeLoginResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeLoginResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeLoginResponse value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeLoginResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeLoginResponse value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeLoginResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'employee_name')  String? employeeName, @JsonKey(defaultValue: 'Cashier')  String? role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeLoginResponse() when $default != null:
return $default(_that.accessToken,_that.employeeId,_that.employeeName,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'employee_name')  String? employeeName, @JsonKey(defaultValue: 'Cashier')  String? role)  $default,) {final _that = this;
switch (_that) {
case _EmployeeLoginResponse():
return $default(_that.accessToken,_that.employeeId,_that.employeeName,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'employee_name')  String? employeeName, @JsonKey(defaultValue: 'Cashier')  String? role)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeLoginResponse() when $default != null:
return $default(_that.accessToken,_that.employeeId,_that.employeeName,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeLoginResponse implements EmployeeLoginResponse {
  const _EmployeeLoginResponse({@JsonKey(name: 'access_token') this.accessToken = '', @JsonKey(name: 'employee_id') this.employeeId = '', @JsonKey(name: 'employee_name') this.employeeName, @JsonKey(defaultValue: 'Cashier') this.role});
  factory _EmployeeLoginResponse.fromJson(Map<String, dynamic> json) => _$EmployeeLoginResponseFromJson(json);

@override@JsonKey(name: 'access_token') final  String accessToken;
@override@JsonKey(name: 'employee_id') final  String employeeId;
@override@JsonKey(name: 'employee_name') final  String? employeeName;
@override@JsonKey(defaultValue: 'Cashier') final  String? role;

/// Create a copy of EmployeeLoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeLoginResponseCopyWith<_EmployeeLoginResponse> get copyWith => __$EmployeeLoginResponseCopyWithImpl<_EmployeeLoginResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeLoginResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeLoginResponse&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,employeeId,employeeName,role);

@override
String toString() {
  return 'EmployeeLoginResponse(accessToken: $accessToken, employeeId: $employeeId, employeeName: $employeeName, role: $role)';
}


}

/// @nodoc
abstract mixin class _$EmployeeLoginResponseCopyWith<$Res> implements $EmployeeLoginResponseCopyWith<$Res> {
  factory _$EmployeeLoginResponseCopyWith(_EmployeeLoginResponse value, $Res Function(_EmployeeLoginResponse) _then) = __$EmployeeLoginResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'access_token') String accessToken,@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'employee_name') String? employeeName,@JsonKey(defaultValue: 'Cashier') String? role
});




}
/// @nodoc
class __$EmployeeLoginResponseCopyWithImpl<$Res>
    implements _$EmployeeLoginResponseCopyWith<$Res> {
  __$EmployeeLoginResponseCopyWithImpl(this._self, this._then);

  final _EmployeeLoginResponse _self;
  final $Res Function(_EmployeeLoginResponse) _then;

/// Create a copy of EmployeeLoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? employeeId = null,Object? employeeName = freezed,Object? role = freezed,}) {
  return _then(_EmployeeLoginResponse(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,employeeName: freezed == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
