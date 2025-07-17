import 'package:flutter/material.dart';
import 'package:product_urun_tasarim/views/sayfa1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Sayfa1());
  }
}
