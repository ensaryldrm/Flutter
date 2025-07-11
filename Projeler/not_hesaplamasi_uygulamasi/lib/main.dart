import 'package:flutter/material.dart';
import 'package:not_hesaplamasi_uygulamasi/widgets/ortalama_hesapla.dart';
import 'package:not_hesaplamasi_uygulamasi/constants/sabitler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Sabitler.anaRenk,
        useMaterial3: false,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      title: "Ortalama Hesaplama",
      debugShowCheckedModeBanner: false,
      home: OrtalamaHesapla(),
    );
  }
}
