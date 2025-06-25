import 'package:flutter/material.dart';
import 'package:hava_durumu_tasarim/hava_durumu_sayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HavaDurumuSayfa(),
    );
  }
}
