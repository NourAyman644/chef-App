import 'package:chef_app/core/database/Api/endpoints.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/features/auth/presentation/cubit/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/services_locator.dart';
import '../../data/models/login_Model.dart';
import '../../data/repositry/auth_repositry.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());

  final AuthRepository authRepo;
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoginPasswordShowing = true;
  IconData suffixIcon = Icons.visibility;

  void changeLoginPasswordSuffixIcon() {
    isLoginPasswordShowing = !isLoginPasswordShowing;
    suffixIcon =
        isLoginPasswordShowing ? Icons.visibility : Icons.visibility_off;
    emit(ChangeLoginPasswordSuffixIcon());
  }

  // login method
  LoginModel? loginModel;

  void login() async {
    emit(LoginLoadingState());
    final result = await authRepo.Login(
      email: emailController.text,
      password: passwordController.text,
    );
    result.fold(
      (l) => emit(LoginErrorState(l)),
      (r) async {
        // عباره عن   r
        // respone => login model
        loginModel = r;
        await sl<CacheHelper>().saveData(
          key: ApiKeys.token,
          value: r.token,
        );
        emit(LoginSucessState());
      },
    );
  }
}
