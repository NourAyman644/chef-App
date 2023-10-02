import 'package:flutter/material.dart';

import '../core/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: Routes.initilRoute,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
