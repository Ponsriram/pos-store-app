// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) =>
    _PaymentResponse(
      id: json['id'] as String,
      orderId: json['order_id'] as String,
      paymentMethod: json['payment_method'] as String,
      amount: (json['amount'] as num).toDouble(),
      tipAmount: (json['tip_amount'] as num?)?.toDouble() ?? 0,
      reference: json['reference'] as String?,
      isRefund: json['is_refund'] as bool? ?? false,
      paidAt: json['paid_at'] == null
          ? null
          : DateTime.parse(json['paid_at'] as String),
    );

Map<String, dynamic> _$PaymentResponseToJson(_PaymentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'payment_method': instance.paymentMethod,
      'amount': instance.amount,
      'tip_amount': instance.tipAmount,
      'reference': instance.reference,
      'is_refund': instance.isRefund,
      'paid_at': instance.paidAt?.toIso8601String(),
    };
