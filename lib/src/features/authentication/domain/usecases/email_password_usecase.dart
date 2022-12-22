import 'package:todo_app_clean_architecture/src/features/authentication/presentation/viewmodels/auth_viewmodel.dart';

class ValidPasswordUseCase extends UseCase<String, bool> {
  @override
  bool call(String params) {
    if (params.isNotEmpty && params.length >= 8 && params.length <= 32) {
      return true;
    }
    return false;
  }
}

void main() {
  ValidPasswordUseCase isPasswordValid = ValidPasswordUseCase();
  String password = 'MySimplePassword';
  print(isPasswordValid(password));
}
