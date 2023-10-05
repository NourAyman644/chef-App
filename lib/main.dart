import 'package:chef_app/core/bloc/global_cubit.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/features/auth/presentation/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'App/my_app.dart';
import 'core/services/services_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServicesLactor();
  await sl<CacheHelper>().init();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => sl<GlobalCubit>()..getCachedLang(),
      ),
      BlocProvider(
        create: (context) => sl<LoginCubit>(),
      ),
    ],
    child: const MyApp(),
  ));
}
