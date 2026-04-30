import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginui/login_page.dart';
import 'package:loginui/register_page.dart';

class Routes {
  static const String loginRoute = "/Login";
  static const String signUpRoute = "/Sign Up";
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
        case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
      ),
    );
  }
}