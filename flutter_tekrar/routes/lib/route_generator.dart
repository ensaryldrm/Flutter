import 'package:flutter/material.dart';
import 'package:routes/greenpage.dart';
import 'package:routes/redpage.dart';
import 'package:routes/yellowpage.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => YellowPage());

      case "/redPage":
        return MaterialPageRoute(builder: (context) => RedPage());

      case "/greenPage":
        return MaterialPageRoute(builder: (context) => GreenPage());

      default:
        return MaterialPageRoute(builder: (context) => GreenPage());
    }
  }
}
