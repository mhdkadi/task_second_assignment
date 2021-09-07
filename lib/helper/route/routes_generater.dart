import 'package:flutter/material.dart';
import 'package:mohammad/helper/route/roter.dart';
import 'package:mohammad/view/screens/Sign_In/signIn.dart';
import 'package:mohammad/view/screens/Sign_Up/signUp.dart';
import 'package:mohammad/view/screens/profile/profile.dart';

class Routes {
  static Route<dynamic> routesGenerater(RouteSettings siettings) {
    switch (siettings.name) {
      case '\SignInScreen':
        return MaterialPageRoute(builder: (context) => SignInScreen());
      case '\ProfileScreen':
        return MaterialPageRoute(builder: (context) => ProfileScreen());
      case '\RoutPage':
        return MaterialPageRoute(builder: (context) => RoutPage());
      case '\SignUpScreen':
        return MaterialPageRoute(builder: (context) => SignUpScreen());
      default:
        return MaterialPageRoute(builder: (context) => SignInScreen());
    }
  }
}
