import 'package:chef_app/core/utils/App_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoadingIncdicator extends StatelessWidget {
  const CustomLoadingIncdicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpinKitFadingCircle(
      color: AppColors.primaryColor,
    );
  }
}
