import 'package:flutter/material.dart';

void Navigate({
  required BuildContext context,
  required String routeName,
  dynamic arg,
}) {
  Navigator.pushNamed(
    context,
    routeName,
    arguments: arg,
  );
}
