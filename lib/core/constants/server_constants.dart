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
  static const String storesTerminals = 'stores/terminals';
  static const String storesTables = 'stores/tables';
  static String storeTables(String storeId) => 'stores/$storeId/tables';

  // Products
  static const String categories = 'products/categories';
  static const String products = 'products';
  static String productById(String productId) => 'products/$productId';

  // Orders
  static const String orders = 'orders';
  static String orderById(String orderId) => 'orders/$orderId';
  static String orderStatus(String orderId) => 'orders/$orderId/status';
  static String orderCancel(String orderId) => 'orders/$orderId/cancel';
  static String orderPayments(String orderId) => 'orders/$orderId/payments';
  static const String payments = 'orders/payments';

  // Inventory
  static const String inventoryItems = 'inventory/items';
  static String inventoryItemById(String itemId) => 'inventory/items/$itemId';
  static const String inventoryStock = 'inventory/stock';
  static const String inventoryStockAdjustments = 'inventory/stock/adjustments';
  static const String inventoryUnits = 'inventory/units';
  static const String inventoryLocations = 'inventory/locations';
}
