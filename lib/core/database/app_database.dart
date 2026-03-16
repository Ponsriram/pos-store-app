import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

// =====================================================================
// TABLE DEFINITIONS
// =====================================================================

/// Table for storing user session information
class Users extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().withDefault(const Constant(''))();
  TextColumn get email => text().withDefault(const Constant(''))();
  TextColumn get phone => text().withDefault(const Constant(''))();
  TextColumn get token => text().withDefault(const Constant(''))();
  TextColumn get role => text().withDefault(const Constant(''))();
  TextColumn get profileImage => text().withDefault(const Constant(''))();
  BoolColumn get isLoggedIn => boolean().withDefault(const Constant(false))();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Table for app-level settings
class AppSettings extends Table {
  IntColumn get id => integer().autoIncrement()();
  BoolColumn get isDarkMode => boolean().withDefault(const Constant(false))();
  BoolColumn get isAppLockEnabled =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get isScreenshotBlocked =>
      boolean().withDefault(const Constant(false))();
  TextColumn get serverEndpoint => text().withDefault(const Constant(''))();
  TextColumn get locale => text().withDefault(const Constant('en'))();
  TextColumn get selectedStoreId => text().withDefault(const Constant(''))();
  TextColumn get terminalId => text().withDefault(const Constant(''))();
  TextColumn get terminalToken => text().withDefault(const Constant(''))();
  TextColumn get employeeToken => text().withDefault(const Constant(''))();
  TextColumn get employeeId => text().withDefault(const Constant(''))();
  TextColumn get employeeName => text().withDefault(const Constant(''))();
  TextColumn get employeeRole => text().withDefault(const Constant(''))();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}

@DriftDatabase(tables: [Users, AppSettings])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 5;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
    },
    onUpgrade: (m, from, to) async {
      if (from < 2) {
        await m.addColumn(users, users.phone);
        await m.addColumn(users, users.token);
        await m.addColumn(users, users.role);
        await m.addColumn(users, users.isActive);
        await m.createTable(appSettings);
      }
      if (from < 3) {
        await m.addColumn(appSettings, appSettings.selectedStoreId);
      }
      if (from < 4) {
        try {
          await m.addColumn(appSettings, appSettings.terminalId);
        } catch (e) {
          // ignore: avoid_print
          print('Column terminal_id might already exist: $e');
        }
        try {
          await m.addColumn(appSettings, appSettings.terminalToken);
        } catch (e) {
          // ignore: avoid_print
          print('Column terminalToken might already exist: $e');
        }
      }
      if (from < 5) {
        try {
          await m.addColumn(appSettings, appSettings.employeeToken);
        } catch (e) {
          // ignore: avoid_print
          print('Column employeeToken might already exist: $e');
        }
        try {
          await m.addColumn(appSettings, appSettings.employeeId);
        } catch (e) {
          // ignore: avoid_print
          print('Column employeeId might already exist: $e');
        }
        try {
          await m.addColumn(appSettings, appSettings.employeeName);
        } catch (e) {
          // ignore: avoid_print
          print('Column employeeName might already exist: $e');
        }
        try {
          await m.addColumn(appSettings, appSettings.employeeRole);
        } catch (e) {
          // ignore: avoid_print
          print('Column employeeRole might already exist: $e');
        }
      }
    },
  );

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'noshpos_database');
  }

  // =====================================================================
  // USER OPERATIONS
  // =====================================================================

  Future<User?> getUser(String id) async {
    return (select(users)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  Future<User?> getLoggedInUser() async {
    return (select(
      users,
    )..where((t) => t.isLoggedIn.equals(true))).getSingleOrNull();
  }

  Future<int> insertUser(UsersCompanion user) async {
    return into(users).insert(user, mode: InsertMode.insertOrReplace);
  }

  Future<bool> updateUser(UsersCompanion user) async {
    return update(users).replace(user);
  }

  Future<int> deleteUser(String id) async {
    return (delete(users)..where((t) => t.id.equals(id))).go();
  }

  Future<void> logoutUser(String id) async {
    await (update(users)..where((t) => t.id.equals(id))).write(
      const UsersCompanion(isLoggedIn: Value(false)),
    );
  }

  Future<void> updateUserProfile({
    required String id,
    required String name,
    required String email,
    required String profileImage,
  }) async {
    await (update(users)..where((t) => t.id.equals(id))).write(
      UsersCompanion(
        name: Value(name),
        email: Value(email),
        profileImage: Value(profileImage),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  // =====================================================================
  // CLEAR ALL DATA
  // =====================================================================

  Future<String?> getLoggedInUserToken() async {
    final user = await getLoggedInUser();
    return user?.token.isEmpty == true ? null : user?.token;
  }

  // =====================================================================
  // CLEAR ALL DATA
  // =====================================================================

  Future<void> clearAllData() async {
    await transaction(() async {
      await delete(users).go();
      await delete(appSettings).go();
    });
  }

  // =====================================================================
  // APP SETTINGS OPERATIONS
  // =====================================================================

  Future<AppSetting> getSettings() async {
    final settings = await select(appSettings).getSingleOrNull();
    if (settings != null) return settings;
    // Create default settings if not exists
    await into(
      appSettings,
    ).insert(AppSettingsCompanion.insert(), mode: InsertMode.insertOrIgnore);
    return (await select(appSettings).getSingle());
  }

  Stream<AppSetting> watchSettings() {
    return select(appSettings).watchSingle();
  }

  Future<void> updateIsDarkMode(bool isDarkMode) async {
    await (update(appSettings)..where((t) => t.id.equals(1))).write(
      AppSettingsCompanion(
        isDarkMode: Value(isDarkMode),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> updateIsAppLockEnabled(bool isEnabled) async {
    await (update(appSettings)..where((t) => t.id.equals(1))).write(
      AppSettingsCompanion(
        isAppLockEnabled: Value(isEnabled),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> updateIsScreenshotBlocked(bool isBlocked) async {
    await (update(appSettings)..where((t) => t.id.equals(1))).write(
      AppSettingsCompanion(
        isScreenshotBlocked: Value(isBlocked),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> updateServerEndpoint(String endpoint) async {
    await (update(appSettings)..where((t) => t.id.equals(1))).write(
      AppSettingsCompanion(
        serverEndpoint: Value(endpoint),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> updateLocale(String locale) async {
    await (update(appSettings)..where((t) => t.id.equals(1))).write(
      AppSettingsCompanion(
        locale: Value(locale),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  // =====================================================================
  // SELECTED STORE OPERATIONS
  // =====================================================================

  Future<String?> getSelectedStoreId() async {
    final settings = await getSettings();
    final id = settings.selectedStoreId;
    return (id.isEmpty) ? null : id;
  }

  Future<void> setSelectedStoreId(String storeId) async {
    await getSettings(); // ensure row exists
    await (update(appSettings)..where((t) => t.id.equals(1))).write(
      AppSettingsCompanion(
        selectedStoreId: Value(storeId),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> clearSelectedStoreId() async {
    await (update(appSettings)..where((t) => t.id.equals(1))).write(
      AppSettingsCompanion(
        selectedStoreId: const Value(''),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  // =====================================================================
  // TERMINAL OPERATIONS
  // =====================================================================

  Future<String?> getTerminalId() async {
    final settings = await getSettings();
    final id = settings.terminalId;
    return (id.isEmpty) ? null : id;
  }

  Future<String?> getTerminalToken() async {
    final settings = await getSettings();
    final token = settings.terminalToken;
    return (token.isEmpty) ? null : token;
  }

  Future<void> setTerminal(String terminalId, String terminalToken) async {
    await getSettings(); // ensure row exists
    await (update(appSettings)..where((t) => t.id.equals(1))).write(
      AppSettingsCompanion(
        terminalId: Value(terminalId),
        terminalToken: Value(terminalToken),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> clearTerminal() async {
    await (update(appSettings)..where((t) => t.id.equals(1))).write(
      AppSettingsCompanion(
        terminalId: const Value(''),
        terminalToken: const Value(''),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }
  // =====================================================================
  // EMPLOYEE OPERATIONS
  // =====================================================================

  Future<String?> getEmployeeToken() async {
    final settings = await getSettings();
    final token = settings.employeeToken;
    return (token.isEmpty) ? null : token;
  }

  Future<String?> getEmployeeId() async {
    final settings = await getSettings();
    final id = settings.employeeId;
    return (id.isEmpty) ? null : id;
  }

  Future<String?> getEmployeeRole() async {
    final settings = await getSettings();
    final role = settings.employeeRole;
    return (role.isEmpty) ? null : role;
  }

  Future<void> setEmployee(
    String employeeId,
    String employeeToken,
    String employeeName,
    String employeeRole,
  ) async {
    await getSettings(); // ensure row exists
    await (update(appSettings)..where((t) => t.id.equals(1))).write(
      AppSettingsCompanion(
        employeeId: Value(employeeId),
        employeeToken: Value(employeeToken),
        employeeName: Value(employeeName),
        employeeRole: Value(employeeRole),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> clearEmployee() async {
    await (update(appSettings)..where((t) => t.id.equals(1))).write(
      AppSettingsCompanion(
        employeeId: const Value(''),
        employeeToken: const Value(''),
        employeeName: const Value(''),
        employeeRole: const Value(''),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }
}
