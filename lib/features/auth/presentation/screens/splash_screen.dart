import 'package:chef_app/core/utils/App_assets.dart';
import 'package:chef_app/core/utils/App_colors.dart';
import 'package:chef_app/core/utils/App_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 120.w,
              height: 120.h,
              child: Image.asset(AppAssets.AppLogo),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              AppStrings.appTitle,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 36,
                    color: AppColors.txt_black,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
