import 'package:fpdart/fpdart.dart';

import '../../../core/error/failure.dart';
import '../../../core/model/user.dart';
import '../../../core/storage/local_storage.dart';
import '../repository/auth_repository.dart';
import '../../../core/database/app_database.dart' hide User;
import '../../../init_dependencies.dart';
import 'package:drift/drift.dart' hide Column;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_service.g.dart';

@riverpod
AuthService authService(Ref ref) {
  return AuthService(
    authRepo: ref.watch(authRepositoryProvider),
    localStorage: serviceLocator<LocalStorage>(),
  );
}

/// Service layer for admin authentication.
///
/// Wraps [AuthRepository] + [LocalStorage] to handle login, logout,
/// and session checks.
class AuthService {
  final AuthRepository _authRepo;
  final LocalStorage _localStorage;

  AuthService({
    required AuthRepository authRepo,
    required LocalStorage localStorage,
  }) : _authRepo = authRepo,
       _localStorage = localStorage;

  /// Login with email and password.
  ///
  /// On success, persists the user session to the local Drift DB and
  /// returns the [User].
  Future<Either<Failure, User>> login({
    required String email,
    required String password,
    String? terminalId,
  }) async {
    final result = await _authRepo.login(
      email: email,
      password: password,
      terminalId: terminalId,
    );

    return result.fold((failure) => Left(failure), (authResponse) async {
      final user = authResponse.user;
      final database = serviceLocator<AppDatabase>();

      await database.insertUser(
        UsersCompanion.insert(
          id: user.id,
          name: Value(user.name),
          email: Value(user.email),
          phone: Value(user.phone),
          token: Value(authResponse.accessToken),
          role: Value(user.role),
          isLoggedIn: const Value(true),
          isActive: Value(user.isActive),
        ),
      );

      return Right(user);
    });
  }

  /// Logout: clears user session and selected store.
  Future<void> logout() async {
    final database = serviceLocator<AppDatabase>();
    final dbUser = await database.getLoggedInUser();
    if (dbUser != null) {
      await database.logoutUser(dbUser.id);
    }
    await _localStorage.clearSelectedStoreId();
  }

  /// Checks whether an admin token exists.
  Future<bool> isLoggedIn() async {
    final token = await _localStorage.getAdminToken();
    return token != null && token.isNotEmpty;
  }
}
