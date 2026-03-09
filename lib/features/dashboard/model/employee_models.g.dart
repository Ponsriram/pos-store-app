// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Employee _$EmployeeFromJson(Map<String, dynamic> json) => _Employee(
  id: json['id'] as String,
  storeId: json['store_id'] as String,
  userId: json['user_id'] as String?,
  name: json['name'] as String,
  employeeCode: json['employee_code'] as String,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  role: json['role'] as String,
  isActive: json['is_active'] as bool? ?? true,
  permissions: json['permissions'] as Map<String, dynamic>?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$EmployeeToJson(_Employee instance) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'user_id': instance.userId,
  'name': instance.name,
  'employee_code': instance.employeeCode,
  'phone': instance.phone,
  'email': instance.email,
  'role': instance.role,
  'is_active': instance.isActive,
  'permissions': instance.permissions,
  'created_at': instance.createdAt?.toIso8601String(),
};

_EmployeeCreate _$EmployeeCreateFromJson(Map<String, dynamic> json) =>
    _EmployeeCreate(
      storeId: json['store_id'] as String,
      name: json['name'] as String,
      employeeCode: json['employee_code'] as String,
      pin: json['pin'] as String,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String? ?? 'cashier',
      userId: json['user_id'] as String?,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$EmployeeCreateToJson(_EmployeeCreate instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'name': instance.name,
      'employee_code': instance.employeeCode,
      'pin': instance.pin,
      'phone': instance.phone,
      'email': instance.email,
      'role': instance.role,
      'user_id': instance.userId,
      'permissions': instance.permissions,
    };
