import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
abstract class Store with _$Store {
  const factory Store({
    required String id,
    @JsonKey(name: 'owner_id') required String ownerId,
    required String name,
    @JsonKey(name: 'location') String? address,
    String? city,
    String? state,
    String? phone,
    String? email,
    @JsonKey(name: 'outlet_type') String? outletType,
    @Default('INR') String currency,
    @Default('Asia/Kolkata') String timezone,
    @JsonKey(name: 'tax_inclusive') @Default(false) bool taxInclusive,
    @JsonKey(name: 'chain_id') String? chainId,
    @JsonKey(name: 'table_count') @Default(0) int tableCount,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}
