import 'package:chef_app/core/utils/App_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElvatedBtn extends StatelessWidget {
  const CustomElvatedBtn({
    Key? key,
    required this.text,
    this.height = 48,
    this.width = double.infinity,
    this.color = AppColors.primaryColor,
    required this.onpressed,
  }) : super(key: key);
  final String text;
  final double? height;
  final double? width;
  final Color color;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height!.h,
      width: width!.w,
      child: ElevatedButton(
        onPressed: onpressed,
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
              backgroundColor: MaterialStatePropertyAll(color),
            ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
