import 'package:freezed_annotation/freezed_annotation.dart';

part 'table.freezed.dart';
part 'table.g.dart';

@freezed
abstract class DineInTable with _$DineInTable {
  const factory DineInTable({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'table_number') required int tableNumber,
    String? label,
    @Default(4) int capacity,
    @Default('available') String status,
    @JsonKey(name: 'qr_code') String? qrCode,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _DineInTable;

  factory DineInTable.fromJson(Map<String, dynamic> json) =>
      _$DineInTableFromJson(json);
}
