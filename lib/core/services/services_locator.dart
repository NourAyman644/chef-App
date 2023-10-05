import 'package:chef_app/core/bloc/global_cubit.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/features/auth/presentation/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
void initServicesLactor() {
  //external
  sl.registerLazySingleton(() => CacheHelper());
  //cubits
  sl.registerLazySingleton(() => GlobalCubit());
  sl.registerLazySingleton(() => LoginCubit());
}
