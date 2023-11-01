import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/view/login_screen.dart';

import '../../view/home_screen.dart';
import '../../view/signup_view.dart';

class Routes{
  static MaterialPageRoute generateRoute(RouteSettings settings){
    switch(settings.name){
      // case RoutesName.splash:
      //   return MaterialPageRoute(builder: (BuildContext context) => const SplashView());
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen(),);
      case RoutesName.login:
        return MaterialPageRoute(builder: (context) => const LoginScreen(),);
      case RoutesName.signUp:
        return MaterialPageRoute(builder: (BuildContext context) => const SignUpView());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Placeholder();
        },);
    }
  }
}