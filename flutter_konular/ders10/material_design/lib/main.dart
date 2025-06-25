import 'package:flutter/material.dart';
import 'package:material_design/app_bar_ozellikleri.dart';
import 'package:material_design/card_and_listile_kullanimi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "App Bar Kullanımı",
      debugShowCheckedModeBanner: false,
      home: CardAndListileKullanimi(),
    );
  }
}
