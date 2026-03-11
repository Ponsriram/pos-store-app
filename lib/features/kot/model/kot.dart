import 'package:freezed_annotation/freezed_annotation.dart';

part 'kot.freezed.dart';
part 'kot.g.dart';

@freezed
abstract class KitchenOrderTicket with _$KitchenOrderTicket {
  const factory KitchenOrderTicket({
    required String id,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'kot_number') @Default(0) int kotNumber,
    @JsonKey(name: 'kitchen_section') String? kitchenSection,
    @Default('pending') String status,
    @JsonKey(name: 'reprint_count') @Default(0) int reprintCount,
    @Default([]) List<KotItem> items,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _KitchenOrderTicket;

  factory KitchenOrderTicket.fromJson(Map<String, dynamic> json) =>
      _$KitchenOrderTicketFromJson(json);
}

@freezed
abstract class KotItem with _$KotItem {
  const factory KotItem({
    required String id,
    @JsonKey(name: 'kot_id') required String kotId,
    @JsonKey(name: 'order_item_id') required String orderItemId,
    @JsonKey(name: 'product_name') required String productName,
    @Default(1) int quantity,
    String? notes,
  }) = _KotItem;

  factory KotItem.fromJson(Map<String, dynamic> json) =>
      _$KotItemFromJson(json);
}

@freezed
abstract class KotStatusUpdate with _$KotStatusUpdate {
  const factory KotStatusUpdate({required String status}) = _KotStatusUpdate;

  factory KotStatusUpdate.fromJson(Map<String, dynamic> json) =>
      _$KotStatusUpdateFromJson(json);
}
