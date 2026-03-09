import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart' hide Order;
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/network/connection_checker.dart';
import '../../../init_dependencies.dart';
import '../../home/model/order.dart';
import '../model/payment_models.dart';
// PaymentCreate is in order.dart, PaymentResponse is in payment_models.dart

part 'dashboard_sales_repository.g.dart';

@riverpod
DashboardSalesRepository dashboardSalesRepository(Ref ref) {
  return DashboardSalesRepository(
    client: serviceLocator<http.Client>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
  );
}

class DashboardSalesRepository {
  final http.Client client;
  final ConnectionChecker connectionChecker;

  DashboardSalesRepository({
    required this.client,
    required this.connectionChecker,
  });

  Uri _buildUri(String endpoint, [Map<String, String>? queryParams]) {
    final base = ServerConstants.baseUrl;
    final uri = Uri.parse('$base/$endpoint');
    if (queryParams != null) {
      return uri.replace(queryParameters: queryParams);
    }
    return uri;
  }

  Future<Either<Failure, List<Order>>> getOrders({
    required String storeId,
    String? status,
    String? paymentStatus,
    int limit = 50,
    int offset = 0,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final params = <String, String>{
        'store_id': storeId,
        'limit': limit.toString(),
        'offset': offset.toString(),
      };
      if (status != null) params['status'] = status;
      if (paymentStatus != null) params['payment_status'] = paymentStatus;

      final uri = _buildUri(ApiEndpoints.orders, params);
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      final orders = data
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(orders);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch orders: $e'));
    }
  }

  Future<Either<Failure, Order>> getOrderById(String orderId) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.orderById(orderId));
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final order = Order.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(order);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch order: $e'));
    }
  }

  Future<Either<Failure, PaymentResponse>> createPayment(
    PaymentCreate payment,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.payments);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(payment.toJson()),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final created = PaymentResponse.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(created);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to create payment: $e'));
    }
  }
}
