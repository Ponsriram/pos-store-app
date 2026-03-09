import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_models.freezed.dart';
part 'payment_models.g.dart';

// ---------------------------------------------------------------------------
// Payment Response (for sales module)
// ---------------------------------------------------------------------------

@freezed
abstract class PaymentResponse with _$PaymentResponse {
  const factory PaymentResponse({
    required String id,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    required double amount,
    @JsonKey(name: 'tip_amount') @Default(0) double tipAmount,
    String? reference,
    @JsonKey(name: 'is_refund') @Default(false) bool isRefund,
    @JsonKey(name: 'paid_at') DateTime? paidAt,
  }) = _PaymentResponse;

  factory PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseFromJson(json);
}
