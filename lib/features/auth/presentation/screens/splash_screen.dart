import 'package:chef_app/core/utils/App_assets.dart';
import 'package:chef_app/core/utils/App_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              child: Image.asset(AppAssets.AppLogo),
            ),
          ],
        ),
      ),
    );
  }
}
