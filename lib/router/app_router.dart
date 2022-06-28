import 'package:flutter/material.dart';

import '../screens/register_page.dart';
import '../screens/login_page.dart';
import '../screens/on_boarding_page.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const OnBoardingPage(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case '/register':
        return MaterialPageRoute(
          builder: (_) => const RegisterPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingPage(),
        );
    }
  }
}
