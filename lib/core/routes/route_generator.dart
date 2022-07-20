import '../app_core.dart';

import 'package:flutter/material.dart';

import '../../pages/route_error.dart';
import '../../pages/splash_screen.dart';
import '../../pages/navigation.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/Splash':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/Navigation':
        return MaterialPageRoute(builder: (_) => const NavigationWidget());
      default:
        return MaterialPageRoute(builder: (_) => const RouteError());
    }
  }
}
