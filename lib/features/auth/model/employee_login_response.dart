import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_login_response.freezed.dart';
part 'employee_login_response.g.dart';

@freezed
abstract class EmployeeLoginResponse with _$EmployeeLoginResponse {
  const factory EmployeeLoginResponse({
    @JsonKey(name: 'access_token') @Default('') String accessToken,
    @JsonKey(name: 'employee_id') @Default('') String employeeId,
    @JsonKey(name: 'employee_name') String? employeeName,
    @JsonKey(defaultValue: 'Cashier') String? role,
  }) = _EmployeeLoginResponse;

  factory EmployeeLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$EmployeeLoginResponseFromJson(json);
}
