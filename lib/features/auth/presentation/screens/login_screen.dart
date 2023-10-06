import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/App_assets.dart';
import 'package:chef_app/core/utils/App_colors.dart';
import 'package:chef_app/core/utils/App_strings.dart';
import 'package:chef_app/core/utils/commons/commons.dart';
import 'package:chef_app/core/weigths/custom_elvated_btn.dart';
import 'package:chef_app/core/weigths/custom_image.dart';
import 'package:chef_app/core/weigths/custom_loading_incdicator.dart';
import 'package:chef_app/core/weigths/custom_text_form_field.dart';
import 'package:chef_app/features/auth/presentation/cubit/login_cubit.dart';
import 'package:chef_app/features/auth/presentation/cubit/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomImage(
            img_path: AppAssets.bag2,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              // TODO: implement listener
              if (state is LoginSucessState) {
                showToast(
                    message: AppStrings.loginSucessfully.tr(context),
                    state: ToastStates.success);
              }
              if (state is LoginErrorState) {
                showToast(message: state.message, state: ToastStates.error);
              }
            },
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Form(
                  key: BlocProvider.of<LoginCubit>(context).loginKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 92.h,
                        ),
                        Center(
                          child: Text(
                            AppStrings.welcomeBack.tr(context),
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontSize: 32.sp,
                                  color: AppColors.white,
                                ),
                          ),
                        ),
                        SizedBox(
                          height: 195.h,
                        ),
                        CustomTextFormField(
                          controller: BlocProvider.of<LoginCubit>(context)
                              .emailController,
                          hint: AppStrings.email.tr(context),
                          valid: (data) {
                            if (data!.isEmpty || !data.contains('@gmail.com')) {
                              return AppStrings.pleaseEnterValidEmail
                                  .tr(context);
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        CustomTextFormField(
                          controller: BlocProvider.of<LoginCubit>(context)
                              .passwordController,
                          isPassword: BlocProvider.of<LoginCubit>(context)
                              .isLoginPasswordShowing,
                          hint: AppStrings.password.tr(context),
                          icon: BlocProvider.of<LoginCubit>(context).suffixIcon,
                          sufixIconOnpressed: () {
                            BlocProvider.of<LoginCubit>(context)
                                .changeLoginPasswordSuffixIcon();
                          },
                          valid: (data) {
                            if (data!.length < 6) {
                              return AppStrings.pleaseEnterValidPassword
                                  .tr(context);
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Row(
                          children: [
                            Text(
                              AppStrings.forgetPassword.tr(context),
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                    fontSize: 16.sp,
                                    color: AppColors.textColor,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 64.h,
                        ),
                        state is LoginLoadingState
                            ? const CustomLoadingIncdicator()
                            : CustomElvatedBtn(
                                text: AppStrings.signIn.tr(context),
                                onpressed: () {
                                  if (BlocProvider.of<LoginCubit>(context)
                                      .loginKey
                                      .currentState!
                                      .validate()) {
                                    BlocProvider.of<LoginCubit>(context)
                                        .login();
                                  }
                                  // Navigator.pushNamed(context, Routes.login);
                                }),
                        SizedBox(
                          height: 72.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppStrings.dontHaveAccount.tr(context),
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    fontSize: 16.sp,
                                    color: AppColors.softGrey,
                                  ),
                            ),
                            Text(
                              AppStrings.signUp.tr(context),
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    fontSize: 16.sp,
                                    color: AppColors.primaryColor,
                                  ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
