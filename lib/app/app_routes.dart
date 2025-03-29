import 'package:app/Auth/sign_in_screen.dart';
import 'package:app/Auth/sign_up_screen.dart';

import 'package:app/features/auth/screen/splash_screen.dart';
import 'package:app/common/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    late Widget route;
    if (settings.name == SplashScreen.home) {
      route = SplashScreen();
    } else if (settings.name == SignInScreen.home) {
      route = SignInScreen();
    } else if (settings.name == SignUpScreen.home) {
      route = SignUpScreen();
    }else if(settings.name==BottomNavBar.home){
route =BottomNavBar();
    }else if(settings.name==BottomNavBar.home){
route =BottomNavBar();}

    return MaterialPageRoute(
      builder: (context) {
        return route;
      },
    );
  }
}
