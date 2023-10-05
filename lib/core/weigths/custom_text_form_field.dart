import 'package:chef_app/core/utils/App_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.hint,
    this.LabelText,
    required this.controller,
    this.valid,
    this.isPassword = false,
    this.icon,
    this.sufixIconOnpressed,
  }) : super(key: key);

  final String hint;
  final TextStyle? LabelText;
  final TextEditingController controller;
  final String? Function(String?)? valid;
  final bool isPassword;
  final IconData? icon;
  final VoidCallback? sufixIconOnpressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      validator: valid,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.all(16),
        suffixIcon: IconButton(
          onPressed: sufixIconOnpressed,
          icon: Icon(
            icon,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
