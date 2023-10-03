import 'package:chef_app/core/utils/App_assets.dart';
import 'package:chef_app/core/utils/App_colors.dart';
import 'package:chef_app/core/utils/App_strings.dart';
import 'package:chef_app/core/utils/commons/commons.dart';
import 'package:chef_app/core/weigths/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateAfterThreeSec();
  }

  void navigateAfterThreeSec() {
    Future.delayed(
      const Duration(seconds: 3),
    ).then((value) {
      Navigate(context: context, routeName: Routes.changeLang);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImage(
              img_path: AppAssets.AppLogo,
              width: 120.w,
              height: 120.h,
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
