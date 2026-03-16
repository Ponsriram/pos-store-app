// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmployeeLoginRequest _$EmployeeLoginRequestFromJson(
  Map<String, dynamic> json,
) => _EmployeeLoginRequest(
  employeeCode: json['employee_code'] as String,
  pin: json['pin'] as String,
  storeId: json['store_id'] as String,
  terminalId: json['terminal_id'] as String,
);

Map<String, dynamic> _$EmployeeLoginRequestToJson(
  _EmployeeLoginRequest instance,
) => <String, dynamic>{
  'employee_code': instance.employeeCode,
  'pin': instance.pin,
  'store_id': instance.storeId,
  'terminal_id': instance.terminalId,
};
