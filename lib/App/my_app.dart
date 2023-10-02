import 'package:flutter/material.dart';

import '../core/routes/app_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: getTheme(),
          initialRoute: Routes.initilRoute,
          onGenerateRoute: AppRoutes.generateRoute,
        );
      },
    );
  }
}
