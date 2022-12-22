abstract class AuthUseCase {
  void execute();
}

class EmailUseCase extends AuthUseCase {
  call(int a, int b) {}

  EmailUseCase();

  @override
  void execute() {
    // TODO: implement execute
  }
}

final EmailUseCase email = EmailUseCase();

void main() {
  email(1, 2);
}
