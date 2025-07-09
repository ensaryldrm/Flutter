import 'package:flutter/material.dart';
import 'package:pizza_uygulama/pages/anaSayfa.dart';
import 'package:pizza_uygulama/pages/sifreGirisSayfa.dart';
import 'package:pizza_uygulama/pages/splashSayfa.dart';
import 'package:pizza_uygulama/pages/uyeGirisSayfa.dart';
import 'package:pizza_uygulama/pages/yemekSayfa.dart';

class Routegenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => SplashSayfa());

      case "/AnaSayfa":
        return MaterialPageRoute(builder: (context) => AnaSayfa());

      case "/UyeGirisSayfa":
        final args = settings.arguments as List<dynamic>;
        final secilenDil = args[0] as String;
        final dilList = args[1] as List<String>;
        return MaterialPageRoute(
          builder: (context) =>
              UyeGirisSayfa(secilenDil: secilenDil, dilList: dilList),
        );

      case "/SifreGirisSayfa":
        return MaterialPageRoute(builder: (context) => SifreGirisSayfa());

      case "/YemekSayfa":
        return MaterialPageRoute(builder: (context) => YemekSayfa());
    }
  }
}
