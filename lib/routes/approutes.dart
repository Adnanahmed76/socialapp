import 'package:flutter/material.dart';
import 'package:mediaapp/pages/homescreen.dart';
import 'package:mediaapp/pages/login_screen.dart';
import 'package:mediaapp/pages/profile_screen.dart';
import 'package:mediaapp/pages/signup_screen.dart';
import 'package:mediaapp/pages/splash_screen.dart';
class Approutes {
  static Route<dynamic> generateRoute(RouteSettings setting){
    switch(setting.name){
      case '/':
      return MaterialPageRoute(builder: (context)=>SplashScreen());
      case '/homescreen':
      return MaterialPageRoute(builder: (context)=>Homescreen());
      case '/loginscreen':
      return MaterialPageRoute(builder: (context)=>LoginScreen());
      case '/signupscreen':
      return MaterialPageRoute(builder: (context)=>SignupScreen());
      case '/profile':
      return MaterialPageRoute(builder: (context)=>ProfileScreen());
      default:
      return MaterialPageRoute(
          builder: (_) => const SizedBox.shrink(),
        );
    }
  } 
}