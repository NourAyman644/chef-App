import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  bool isLoignPasswordShowing = false;
  IconData suffixIcon = Icons.visibility;
  void changePasswordSuffixicon() {
    isLoignPasswordShowing = !isLoignPasswordShowing;
    suffixIcon = isLoignPasswordShowing
        ? Icons.visibility
        : Icons.visibility_off_outlined;
    emit(ChangePasswordSuffixiconSucess());
  }
}
