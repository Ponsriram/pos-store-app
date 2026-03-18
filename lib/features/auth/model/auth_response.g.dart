// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) =>
    _AuthResponse(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String? ?? 'bearer',
      employeeId: json['employee_id'] as String,
      employeeName: json['employee_name'] as String,
      role: json['role'] as String,
      storeId: json['store_id'] as String,
    );

Map<String, dynamic> _$AuthResponseToJson(_AuthResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'employee_id': instance.employeeId,
      'employee_name': instance.employeeName,
      'role': instance.role,
      'store_id': instance.storeId,
    };
