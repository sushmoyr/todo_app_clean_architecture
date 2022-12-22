abstract class AuthRepository {
  Future<void> loginWithEmailPassword(
      {required String email, required String password});
  Future<void> registerWithEmailPassword(
      {required String email, required String password, String? phone});
  Future<void> loginWithPhone({required String phone});
  Future<void> registerWithPhone({required String phone, String? email});
}
