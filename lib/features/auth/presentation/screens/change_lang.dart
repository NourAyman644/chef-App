import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/App_colors.dart';
import 'package:chef_app/core/utils/App_strings.dart';
import 'package:chef_app/core/weigths/custom_elvated_btn.dart';
import 'package:chef_app/core/weigths/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/App_assets.dart';

class ChangeLang extends StatelessWidget {
  const ChangeLang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const CustomImage(
            img_path: AppAssets.bagone,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24),
            child: Column(
              children: [
                SizedBox(
                  height: 116.h,
                ),
                CustomImage(
                  img_path: AppAssets.AppLogo,
                  width: 126.w,
                  height: 120.h,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  AppStrings.welcomeToChefApp.tr(context),
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: AppColors.txt_black,
                        fontSize: 32.sp,
                      ),
                ),
                SizedBox(
                  height: 54.h,
                ),
                Text(
                  AppStrings.pleaseChooseYourLanguage.tr(context),
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: AppColors.txt_black,
                      ),
                ),
                SizedBox(
                  height: 120.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElvatedBtn(
                      text: AppStrings.english,
                      height: 48,
                      width: 140,
                      onpressed: () {},
                      color: AppColors.bg_black,
                    ),
                    CustomElvatedBtn(
                      text: AppStrings.arabic,
                      height: 48,
                      width: 140,
                      onpressed: () {},
                      color: AppColors.bg_black,
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
