import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app_clean_architecture/src/features/authentication/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<void> loginWithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement loginWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<void> loginWithPhone({required String phone}) {
    // TODO: implement loginWithPhone
    throw UnimplementedError();
  }

  @override
  Future<void> registerWithEmailPassword(
      {required String email, required String password, String? phone}) {
    // TODO: implement registerWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<void> registerWithPhone({required String phone, String? email}) {
    // TODO: implement registerWithPhone
    throw UnimplementedError();
  }
}

final authRepositoryProvider = Provider((ref) => AuthRepositoryImpl());
