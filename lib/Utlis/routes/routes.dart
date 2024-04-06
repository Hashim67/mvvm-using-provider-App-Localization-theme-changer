import 'package:flutter/material.dart';
import 'package:mvvm/Utlis/routes/routes_name.dart';
import 'package:mvvm/View/get_login_screen.dart';
import 'package:mvvm/View/home_screen.dart';
import 'package:mvvm/View/login_screen.dart';
import 'package:mvvm/View/profile_screen.dart';
import 'package:mvvm/View/signup_view.dart';
import 'package:mvvm/View/splash_view.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.home:
      return MaterialPageRoute(builder: (BuildContext context) => const HomeScreen());
      case RoutesName.login:
      return MaterialPageRoute(builder: (BuildContext context) => const LoginScreen());
      case RoutesName.signUp:
      return MaterialPageRoute(builder: (BuildContext context) => const SignUpView());
      case RoutesName.splash:
      return MaterialPageRoute(builder: (BuildContext context) => const SplashView()); 
      case RoutesName.getLogin:
      return MaterialPageRoute(builder: (BuildContext context) => const GetLoginScreen());
      case RoutesName.profileScreen:
      return MaterialPageRoute(builder: (BuildContext context) => ProfileScreen());     
      default:
      return MaterialPageRoute(builder: (_){
        return const Scaffold(
          body: Center(
            child:Text('No route defined'),
          ),
        );
      });
    }

  }
}