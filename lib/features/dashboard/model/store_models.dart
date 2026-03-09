import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_models.freezed.dart';
part 'store_models.g.dart';

// ---------------------------------------------------------------------------
// Store Create
// ---------------------------------------------------------------------------

@freezed
abstract class StoreCreate with _$StoreCreate {
  const factory StoreCreate({
    required String name,
    String? location,
    String? phone,
    String? email,
    @Default('Asia/Kolkata') String timezone,
    @Default('INR') String currency,
    @JsonKey(name: 'tax_inclusive') @Default(false) bool taxInclusive,
  }) = _StoreCreate;

  factory StoreCreate.fromJson(Map<String, dynamic> json) =>
      _$StoreCreateFromJson(json);
}

// ---------------------------------------------------------------------------
// POS Terminal
// ---------------------------------------------------------------------------

@freezed
abstract class POSTerminalCreate with _$POSTerminalCreate {
  const factory POSTerminalCreate({
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'device_name') required String deviceName,
    @JsonKey(name: 'device_identifier') required String deviceIdentifier,
  }) = _POSTerminalCreate;

  factory POSTerminalCreate.fromJson(Map<String, dynamic> json) =>
      _$POSTerminalCreateFromJson(json);
}

@freezed
abstract class POSTerminalResponse with _$POSTerminalResponse {
  const factory POSTerminalResponse({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'device_name') required String deviceName,
    @JsonKey(name: 'device_identifier') required String deviceIdentifier,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _POSTerminalResponse;

  factory POSTerminalResponse.fromJson(Map<String, dynamic> json) =>
      _$POSTerminalResponseFromJson(json);
}

// ---------------------------------------------------------------------------
// Dine-In Table Create
// ---------------------------------------------------------------------------

@freezed
abstract class DineInTableCreate with _$DineInTableCreate {
  const factory DineInTableCreate({
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'table_number') required int tableNumber,
    String? label,
    @Default(4) int capacity,
    @Default('available') String status,
    String? section,
  }) = _DineInTableCreate;

  factory DineInTableCreate.fromJson(Map<String, dynamic> json) =>
      _$DineInTableCreateFromJson(json);
}

@freezed
abstract class DineInTableResponse with _$DineInTableResponse {
  const factory DineInTableResponse({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'table_number') required int tableNumber,
    String? label,
    @Default(4) int capacity,
    @Default('available') String status,
    String? section,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _DineInTableResponse;

  factory DineInTableResponse.fromJson(Map<String, dynamic> json) =>
      _$DineInTableResponseFromJson(json);
}
