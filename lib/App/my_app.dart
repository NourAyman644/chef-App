import 'package:chef_app/core/bloc/global_cubit.dart';
import 'package:chef_app/core/bloc/global_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/locale/app_locale.dart';
import '../core/routes/app_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => BlocBuilder<GlobalCubit, GlobalState>(
              builder: (context, state) {
                return MaterialApp(
                  localizationsDelegates: const [
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                    AppLocalizations.delegate,
                  ],
                  supportedLocales: const [
                    Locale('ar', "EG"),
                    Locale('en', "US"),
                  ],
                  locale:
                      Locale(BlocProvider.of<GlobalCubit>(context).langCode),
                  debugShowCheckedModeBanner: false,
                  theme: getTheme(),
                  initialRoute: Routes.initilRoute,
                  onGenerateRoute: AppRoutes.generateRoute,
                );
              },
            ));
  }
}
