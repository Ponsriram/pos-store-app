import 'package:flutter_dotenv/flutter_dotenv.dart';

class ServerConstants {
  static String get baseUrl =>
      dotenv.env['API_BASE_URL'] ?? 'http://localhost:8000';
}

class ApiEndpoints {
  // Auth
  static const String login = 'auth/login';

  // Stores
  static const String stores = 'stores';
  static String storeTables(String storeId) => 'stores/$storeId/tables';

  // Products
  static const String categories = 'products/categories';
  static const String products = 'products';

  // Orders
  static const String orders = 'orders';
  static String orderStatus(String orderId) => 'orders/$orderId/status';
  static String orderPayments(String orderId) => 'orders/$orderId/payments';
}
