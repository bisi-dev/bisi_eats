import '../app_core.dart';

import 'package:flutter/material.dart';

import '../../pages/route_error.dart';
import '../../pages/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/Splash':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return MaterialPageRoute(builder: (_) => const RouteError());
    }
  }
}
