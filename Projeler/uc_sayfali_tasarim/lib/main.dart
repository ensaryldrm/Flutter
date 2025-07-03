import 'package:flutter/material.dart';
import 'package:uc_sayfali_tasarim/ana_sayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* theme: ThemeData(
        elevatedButtonTheme:
            ElevatedButtonThemeData(
              style:
                  ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.pink,
                  ),
            ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.black,
        ),
        primaryColor: Colors.white,
        brightness: Brightness.light,
      ), */
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}
