import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    Key? key,
    required this.img_path,
    this.height,
    this.width,
    this.fit = BoxFit.fill,
  }) : super(key: key);
  final String img_path;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(
        img_path,
        fit: fit,
      ),
    );
  }
}
