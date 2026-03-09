// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Employee {

 String get id;@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'user_id') String? get userId; String get name;@JsonKey(name: 'employee_code') String get employeeCode; String? get phone; String? get email; String get role;@JsonKey(name: 'is_active') bool get isActive; Map<String, dynamic>? get permissions;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeCopyWith<Employee> get copyWith => _$EmployeeCopyWithImpl<Employee>(this as Employee, _$identity);

  /// Serializes this Employee to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Employee&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.permissions, permissions)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,userId,name,employeeCode,phone,email,role,isActive,const DeepCollectionEquality().hash(permissions),createdAt);

@override
String toString() {
  return 'Employee(id: $id, storeId: $storeId, userId: $userId, name: $name, employeeCode: $employeeCode, phone: $phone, email: $email, role: $role, isActive: $isActive, permissions: $permissions, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $EmployeeCopyWith<$Res>  {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) _then) = _$EmployeeCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'user_id') String? userId, String name,@JsonKey(name: 'employee_code') String employeeCode, String? phone, String? email, String role,@JsonKey(name: 'is_active') bool isActive, Map<String, dynamic>? permissions,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$EmployeeCopyWithImpl<$Res>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._self, this._then);

  final Employee _self;
  final $Res Function(Employee) _then;

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? userId = freezed,Object? name = null,Object? employeeCode = null,Object? phone = freezed,Object? email = freezed,Object? role = null,Object? isActive = null,Object? permissions = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,permissions: freezed == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Employee].
extension EmployeePatterns on Employee {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Employee value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Employee() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Employee value)  $default,){
final _that = this;
switch (_that) {
case _Employee():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Employee value)?  $default,){
final _that = this;
switch (_that) {
case _Employee() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'user_id')  String? userId,  String name, @JsonKey(name: 'employee_code')  String employeeCode,  String? phone,  String? email,  String role, @JsonKey(name: 'is_active')  bool isActive,  Map<String, dynamic>? permissions, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Employee() when $default != null:
return $default(_that.id,_that.storeId,_that.userId,_that.name,_that.employeeCode,_that.phone,_that.email,_that.role,_that.isActive,_that.permissions,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'user_id')  String? userId,  String name, @JsonKey(name: 'employee_code')  String employeeCode,  String? phone,  String? email,  String role, @JsonKey(name: 'is_active')  bool isActive,  Map<String, dynamic>? permissions, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Employee():
return $default(_that.id,_that.storeId,_that.userId,_that.name,_that.employeeCode,_that.phone,_that.email,_that.role,_that.isActive,_that.permissions,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'user_id')  String? userId,  String name, @JsonKey(name: 'employee_code')  String employeeCode,  String? phone,  String? email,  String role, @JsonKey(name: 'is_active')  bool isActive,  Map<String, dynamic>? permissions, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Employee() when $default != null:
return $default(_that.id,_that.storeId,_that.userId,_that.name,_that.employeeCode,_that.phone,_that.email,_that.role,_that.isActive,_that.permissions,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Employee implements Employee {
  const _Employee({required this.id, @JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'user_id') this.userId, required this.name, @JsonKey(name: 'employee_code') required this.employeeCode, this.phone, this.email, required this.role, @JsonKey(name: 'is_active') this.isActive = true, final  Map<String, dynamic>? permissions, @JsonKey(name: 'created_at') this.createdAt}): _permissions = permissions;
  factory _Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'user_id') final  String? userId;
@override final  String name;
@override@JsonKey(name: 'employee_code') final  String employeeCode;
@override final  String? phone;
@override final  String? email;
@override final  String role;
@override@JsonKey(name: 'is_active') final  bool isActive;
 final  Map<String, dynamic>? _permissions;
@override Map<String, dynamic>? get permissions {
  final value = _permissions;
  if (value == null) return null;
  if (_permissions is EqualUnmodifiableMapView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeCopyWith<_Employee> get copyWith => __$EmployeeCopyWithImpl<_Employee>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Employee&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._permissions, _permissions)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,userId,name,employeeCode,phone,email,role,isActive,const DeepCollectionEquality().hash(_permissions),createdAt);

@override
String toString() {
  return 'Employee(id: $id, storeId: $storeId, userId: $userId, name: $name, employeeCode: $employeeCode, phone: $phone, email: $email, role: $role, isActive: $isActive, permissions: $permissions, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$EmployeeCopyWith<$Res> implements $EmployeeCopyWith<$Res> {
  factory _$EmployeeCopyWith(_Employee value, $Res Function(_Employee) _then) = __$EmployeeCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'user_id') String? userId, String name,@JsonKey(name: 'employee_code') String employeeCode, String? phone, String? email, String role,@JsonKey(name: 'is_active') bool isActive, Map<String, dynamic>? permissions,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$EmployeeCopyWithImpl<$Res>
    implements _$EmployeeCopyWith<$Res> {
  __$EmployeeCopyWithImpl(this._self, this._then);

  final _Employee _self;
  final $Res Function(_Employee) _then;

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? userId = freezed,Object? name = null,Object? employeeCode = null,Object? phone = freezed,Object? email = freezed,Object? role = null,Object? isActive = null,Object? permissions = freezed,Object? createdAt = freezed,}) {
  return _then(_Employee(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,permissions: freezed == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$EmployeeCreate {

@JsonKey(name: 'store_id') String get storeId; String get name;@JsonKey(name: 'employee_code') String get employeeCode; String get pin; String? get phone; String? get email; String get role;@JsonKey(name: 'user_id') String? get userId; List<String>? get permissions;
/// Create a copy of EmployeeCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeCreateCopyWith<EmployeeCreate> get copyWith => _$EmployeeCreateCopyWithImpl<EmployeeCreate>(this as EmployeeCreate, _$identity);

  /// Serializes this EmployeeCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.pin, pin) || other.pin == pin)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other.permissions, permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,name,employeeCode,pin,phone,email,role,userId,const DeepCollectionEquality().hash(permissions));

@override
String toString() {
  return 'EmployeeCreate(storeId: $storeId, name: $name, employeeCode: $employeeCode, pin: $pin, phone: $phone, email: $email, role: $role, userId: $userId, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $EmployeeCreateCopyWith<$Res>  {
  factory $EmployeeCreateCopyWith(EmployeeCreate value, $Res Function(EmployeeCreate) _then) = _$EmployeeCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId, String name,@JsonKey(name: 'employee_code') String employeeCode, String pin, String? phone, String? email, String role,@JsonKey(name: 'user_id') String? userId, List<String>? permissions
});




}
/// @nodoc
class _$EmployeeCreateCopyWithImpl<$Res>
    implements $EmployeeCreateCopyWith<$Res> {
  _$EmployeeCreateCopyWithImpl(this._self, this._then);

  final EmployeeCreate _self;
  final $Res Function(EmployeeCreate) _then;

/// Create a copy of EmployeeCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? name = null,Object? employeeCode = null,Object? pin = null,Object? phone = freezed,Object? email = freezed,Object? role = null,Object? userId = freezed,Object? permissions = freezed,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,permissions: freezed == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeCreate].
extension EmployeeCreatePatterns on EmployeeCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeCreate value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeCreate value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId,  String name, @JsonKey(name: 'employee_code')  String employeeCode,  String pin,  String? phone,  String? email,  String role, @JsonKey(name: 'user_id')  String? userId,  List<String>? permissions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeCreate() when $default != null:
return $default(_that.storeId,_that.name,_that.employeeCode,_that.pin,_that.phone,_that.email,_that.role,_that.userId,_that.permissions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId,  String name, @JsonKey(name: 'employee_code')  String employeeCode,  String pin,  String? phone,  String? email,  String role, @JsonKey(name: 'user_id')  String? userId,  List<String>? permissions)  $default,) {final _that = this;
switch (_that) {
case _EmployeeCreate():
return $default(_that.storeId,_that.name,_that.employeeCode,_that.pin,_that.phone,_that.email,_that.role,_that.userId,_that.permissions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId,  String name, @JsonKey(name: 'employee_code')  String employeeCode,  String pin,  String? phone,  String? email,  String role, @JsonKey(name: 'user_id')  String? userId,  List<String>? permissions)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeCreate() when $default != null:
return $default(_that.storeId,_that.name,_that.employeeCode,_that.pin,_that.phone,_that.email,_that.role,_that.userId,_that.permissions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeCreate implements EmployeeCreate {
  const _EmployeeCreate({@JsonKey(name: 'store_id') required this.storeId, required this.name, @JsonKey(name: 'employee_code') required this.employeeCode, required this.pin, this.phone, this.email, this.role = 'cashier', @JsonKey(name: 'user_id') this.userId, final  List<String>? permissions}): _permissions = permissions;
  factory _EmployeeCreate.fromJson(Map<String, dynamic> json) => _$EmployeeCreateFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override final  String name;
@override@JsonKey(name: 'employee_code') final  String employeeCode;
@override final  String pin;
@override final  String? phone;
@override final  String? email;
@override@JsonKey() final  String role;
@override@JsonKey(name: 'user_id') final  String? userId;
 final  List<String>? _permissions;
@override List<String>? get permissions {
  final value = _permissions;
  if (value == null) return null;
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of EmployeeCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeCreateCopyWith<_EmployeeCreate> get copyWith => __$EmployeeCreateCopyWithImpl<_EmployeeCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.pin, pin) || other.pin == pin)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other._permissions, _permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,name,employeeCode,pin,phone,email,role,userId,const DeepCollectionEquality().hash(_permissions));

@override
String toString() {
  return 'EmployeeCreate(storeId: $storeId, name: $name, employeeCode: $employeeCode, pin: $pin, phone: $phone, email: $email, role: $role, userId: $userId, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class _$EmployeeCreateCopyWith<$Res> implements $EmployeeCreateCopyWith<$Res> {
  factory _$EmployeeCreateCopyWith(_EmployeeCreate value, $Res Function(_EmployeeCreate) _then) = __$EmployeeCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId, String name,@JsonKey(name: 'employee_code') String employeeCode, String pin, String? phone, String? email, String role,@JsonKey(name: 'user_id') String? userId, List<String>? permissions
});




}
/// @nodoc
class __$EmployeeCreateCopyWithImpl<$Res>
    implements _$EmployeeCreateCopyWith<$Res> {
  __$EmployeeCreateCopyWithImpl(this._self, this._then);

  final _EmployeeCreate _self;
  final $Res Function(_EmployeeCreate) _then;

/// Create a copy of EmployeeCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? name = null,Object? employeeCode = null,Object? pin = null,Object? phone = freezed,Object? email = freezed,Object? role = null,Object? userId = freezed,Object? permissions = freezed,}) {
  return _then(_EmployeeCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,permissions: freezed == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
