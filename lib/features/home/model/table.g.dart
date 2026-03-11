// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DineInTable _$DineInTableFromJson(Map<String, dynamic> json) => _DineInTable(
  tableNumber: (json['table_number'] as num).toInt(),
  label: json['table_label'] as String? ?? '',
);

Map<String, dynamic> _$DineInTableToJson(_DineInTable instance) =>
    <String, dynamic>{
      'table_number': instance.tableNumber,
      'table_label': instance.label,
    };

_StoreTablesResponse _$StoreTablesResponseFromJson(Map<String, dynamic> json) =>
    _StoreTablesResponse(
      storeId: json['store_id'] as String,
      tableCount: (json['table_count'] as num?)?.toInt() ?? 0,
      tables:
          (json['tables'] as List<dynamic>?)
              ?.map((e) => DineInTable.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StoreTablesResponseToJson(
  _StoreTablesResponse instance,
) => <String, dynamic>{
  'store_id': instance.storeId,
  'table_count': instance.tableCount,
  'tables': instance.tables,
};
