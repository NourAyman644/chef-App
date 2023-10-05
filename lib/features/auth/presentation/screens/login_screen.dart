import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/App_assets.dart';
import 'package:chef_app/core/utils/App_colors.dart';
import 'package:chef_app/core/utils/App_strings.dart';
import 'package:chef_app/core/weigths/custom_elvated_btn.dart';
import 'package:chef_app/core/weigths/custom_image.dart';
import 'package:chef_app/core/weigths/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/app_routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  bool PasswordVisibity(isPassword) {
    isPassword = !isPassword;
    return isPassword;
  }

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
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                SizedBox(
                  height: 92.h,
                ),
                Center(
                  child: Text(
                    AppStrings.welcomeBack.tr(context),
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 32.sp,
                          color: AppColors.white,
                        ),
                  ),
                ),
                SizedBox(
                  height: 195.h,
                ),
                CustomTextFormField(
                  controller: TextEditingController(),
                  hint: AppStrings.email.tr(context),
                ),
                SizedBox(
                  height: 32.h,
                ),
                CustomTextFormField(
                  controller: TextEditingController(),
                  isPassword: true,
                  hint: AppStrings.password.tr(context),
                  icon: CupertinoIcons.eye_slash,
                  sufixIconOnpressed: () {},
                  valid: (data) {
                    if (data!.length < 6) {
                      return AppStrings.pleaseEnterValidPassword.tr(context);
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
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 16.sp,
                            color: AppColors.textColor,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 64.h,
                ),
                CustomElvatedBtn(
                    text: AppStrings.signIn.tr(context),
                    onpressed: () {
                      Navigator.pushNamed(context, Routes.login);
                    }),
                SizedBox(
                  height: 72.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.dontHaveAccount.tr(context),
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontSize: 16.sp,
                                color: AppColors.softGrey,
                              ),
                    ),
                    Text(
                      AppStrings.signUp.tr(context),
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontSize: 16.sp,
                                color: AppColors.primaryColor,
                              ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
