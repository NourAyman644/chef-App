import 'package:chef_app/features/auth/presentation/screens/change_lang.dart';
import 'package:chef_app/features/auth/presentation/screens/login_screen.dart';
import 'package:chef_app/features/auth/presentation/screens/reset_password.dart';
import 'package:chef_app/features/auth/presentation/screens/send_code.dart';
import 'package:chef_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:chef_app/features/menu/presentation/screens/add_meals.dart';
import 'package:chef_app/features/profile/presentation/screens/change_password.dart';
import 'package:chef_app/features/profile/presentation/screens/profile_home.dart';
import 'package:chef_app/features/profile/presentation/screens/setting_screen.dart';
import 'package:chef_app/features/profile/presentation/screens/update_profile.dart';
import 'package:flutter/material.dart';

import '../../features/menu/presentation/screens/menu_home.dart';

class Routes {
  static const String initilRoute = '/';
  static const String login = '/login';
  static const String sendCode = '/sendCode';
  static const String restPassword = '/restPassword';
  static const String menuHome = '/menuHome';
  static const String addMeal = '/addMeal';
  static const String profileHome = '/profileHome';
  static const String updateProfile = '/updateProfile';
  static const String setting = '/setting';
  static const String changePassword = '/changePassword';
  static const String changeLang = '/changeLang';
}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSettings) {
    // if(routeSettings.name==Routes.addMeal) return MaterialPageRoute(builder: (_)=>AddMeals());
    switch (routeSettings.name) {
      case Routes.initilRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.sendCode:
        return MaterialPageRoute(builder: (_) => const SendCode());
      case Routes.menuHome:
        return MaterialPageRoute(builder: (_) => const MenuHome());
      case Routes.restPassword:
        return MaterialPageRoute(builder: (_) => const ResetPassword());
      case Routes.addMeal:
        return MaterialPageRoute(builder: (_) => const AddMeals());
      case Routes.profileHome:
        return MaterialPageRoute(builder: (_) => const ProfileHome());
      case Routes.updateProfile:
        return MaterialPageRoute(builder: (_) => const UpdateProfile());
      case Routes.setting:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
      case Routes.changePassword:
        return MaterialPageRoute(builder: (_) => const ChangePassword());
      case Routes.changeLang:
        return MaterialPageRoute(builder: (_) => const ChangeLang());

      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('not found route'),
                  ),
                ));
    }
  }
}
