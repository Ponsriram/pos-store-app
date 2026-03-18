import 'dart:developer';

import 'package:drift/drift.dart' hide Column;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/app_database.dart' hide User;
import '../../../core/model/user.dart';
import '../../../core/provider/current_user_provider.dart';
import '../../../init_dependencies.dart';
import '../repository/auth_repository.dart';

part 'auth_viewmodel.g.dart';

@riverpod
class AuthViewModel extends _$AuthViewModel {
  @override
  AsyncValue<User>? build() {
    return null;
  }

  /// Login with employee code and PIN.
  Future<void> login({
    required String employeeCode,
    required String pin,
  }) async {
    state = const AsyncValue.loading();

    final result = await ref
        .read(authRepositoryProvider)
        .login(employeeCode: employeeCode, pin: pin);

    if (!ref.mounted) return;

    result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (authResponse) async {
        final user = User(
          id: authResponse.employeeId,
          name: authResponse.employeeName,
          role: authResponse.role,
          storeId: authResponse.storeId,
        );

        // Persist user session to local DB
        final database = serviceLocator<AppDatabase>();
        await database.insertUser(
          UsersCompanion.insert(
            id: user.id,
            name: Value(user.name),
            token: Value(authResponse.accessToken),
            role: Value(user.role),
            storeId: Value(user.storeId),
            isLoggedIn: const Value(true),
            isActive: const Value(true),
          ),
        );
        log('AuthViewModel: employee ${user.id} persisted to DB');

        ref.read(currentUserIdProvider.notifier).state = user.id;
        state = AsyncValue.data(user);
      },
    );
  }

  /// Lock terminal — clears auth token but keeps app state.
  Future<void> lockTerminal() async {
    final database = serviceLocator<AppDatabase>();
    final dbUser = await database.getLoggedInUser();
    if (dbUser != null) {
      await database.logoutUser(dbUser.id);
      log('AuthViewModel: terminal locked for ${dbUser.id}');
    }

    if (!ref.mounted) return;

    ref.read(currentUserIdProvider.notifier).state = null;
    state = null;
  }

  /// Full logout — clears everything.
  Future<void> logout() async {
    final database = serviceLocator<AppDatabase>();
    final dbUser = await database.getLoggedInUser();
    if (dbUser != null) {
      await database.logoutUser(dbUser.id);
      log('AuthViewModel: user ${dbUser.id} logged out');
    }

    if (!ref.mounted) return;

    await ref.read(currentUserIdProvider.notifier).clearUser();
    state = null;
  }
}
