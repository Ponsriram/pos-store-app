import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_models.freezed.dart';
part 'product_models.g.dart';

// ---------------------------------------------------------------------------
// Product Create
// ---------------------------------------------------------------------------

@freezed
abstract class ProductCreate with _$ProductCreate {
  const factory ProductCreate({
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'category_id') String? categoryId,
    required String name,
    String? description,
    required double price,
    @JsonKey(name: 'tax_percent') @Default(0) double taxPercent,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _ProductCreate;

  factory ProductCreate.fromJson(Map<String, dynamic> json) =>
      _$ProductCreateFromJson(json);
}

// ---------------------------------------------------------------------------
// Product Update
// ---------------------------------------------------------------------------

@freezed
abstract class ProductUpdate with _$ProductUpdate {
  const factory ProductUpdate({
    String? name,
    String? description,
    double? price,
    @JsonKey(name: 'tax_percent') double? taxPercent,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'category_id') String? categoryId,
  }) = _ProductUpdate;

  factory ProductUpdate.fromJson(Map<String, dynamic> json) =>
      _$ProductUpdateFromJson(json);
}

// ---------------------------------------------------------------------------
// Category Create
// ---------------------------------------------------------------------------

@freezed
abstract class CategoryCreate with _$CategoryCreate {
  const factory CategoryCreate({
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
  }) = _CategoryCreate;

  factory CategoryCreate.fromJson(Map<String, dynamic> json) =>
      _$CategoryCreateFromJson(json);
}
