// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmployeeLoginResponse _$EmployeeLoginResponseFromJson(
  Map<String, dynamic> json,
) => _EmployeeLoginResponse(
  accessToken: json['access_token'] as String? ?? '',
  employeeId: json['employee_id'] as String? ?? '',
  employeeName: json['employee_name'] as String?,
  role: json['role'] as String? ?? 'Cashier',
);

Map<String, dynamic> _$EmployeeLoginResponseToJson(
  _EmployeeLoginResponse instance,
) => <String, dynamic>{
  'access_token': instance.accessToken,
  'employee_id': instance.employeeId,
  'employee_name': instance.employeeName,
  'role': instance.role,
};
