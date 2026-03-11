import 'package:freezed_annotation/freezed_annotation.dart';

part 'table.freezed.dart';
part 'table.g.dart';

@freezed
abstract class DineInTable with _$DineInTable {
  const factory DineInTable({
    @JsonKey(name: 'table_number') required int tableNumber,
    @JsonKey(name: 'table_label') @Default('') String label,
  }) = _DineInTable;

  factory DineInTable.fromJson(Map<String, dynamic> json) =>
      _$DineInTableFromJson(json);
}

@freezed
abstract class StoreTablesResponse with _$StoreTablesResponse {
  const factory StoreTablesResponse({
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'table_count') @Default(0) int tableCount,
    @Default([]) List<DineInTable> tables,
  }) = _StoreTablesResponse;

  factory StoreTablesResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreTablesResponseFromJson(json);
}
