import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
    String? description,
    @JsonKey(name: 'sort_order') @Default(0) int sortOrder,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
