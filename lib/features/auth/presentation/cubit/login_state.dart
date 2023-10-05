abstract class LoginState {}

class LoginInitial extends LoginState {}

class ChangeLoginPasswordSuffixIcon extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginErrorState extends LoginState {
  final String message;

  LoginErrorState(this.message);
}

class LoginSucessState extends LoginState {}
