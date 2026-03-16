import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_login_request.freezed.dart';
part 'employee_login_request.g.dart';

@freezed
abstract class EmployeeLoginRequest with _$EmployeeLoginRequest {
  const factory EmployeeLoginRequest({
    @JsonKey(name: 'employee_code') required String employeeCode,
    required String pin,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'terminal_id') required String terminalId,
  }) = _EmployeeLoginRequest;

  factory EmployeeLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$EmployeeLoginRequestFromJson(json);
}
