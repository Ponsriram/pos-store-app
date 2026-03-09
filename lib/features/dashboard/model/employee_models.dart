import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_models.freezed.dart';
part 'employee_models.g.dart';

// ---------------------------------------------------------------------------
// Employee Response
// ---------------------------------------------------------------------------

@freezed
abstract class Employee with _$Employee {
  const factory Employee({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'user_id') String? userId,
    required String name,
    @JsonKey(name: 'employee_code') required String employeeCode,
    String? phone,
    String? email,
    required String role,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    Map<String, dynamic>? permissions,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}

// ---------------------------------------------------------------------------
// Employee Create
// ---------------------------------------------------------------------------

@freezed
abstract class EmployeeCreate with _$EmployeeCreate {
  const factory EmployeeCreate({
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
    @JsonKey(name: 'employee_code') required String employeeCode,
    required String pin,
    String? phone,
    String? email,
    @Default('cashier') String role,
    @JsonKey(name: 'user_id') String? userId,
    List<String>? permissions,
  }) = _EmployeeCreate;

  factory EmployeeCreate.fromJson(Map<String, dynamic> json) =>
      _$EmployeeCreateFromJson(json);
}
