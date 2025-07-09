import 'package:burc_yorum_tasarim/pages/burc_listesi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink, useMaterial3: false),
      home: BurcListesi(),
    );
  }
}

// CUMA GÜNÜ UYGULAMANIN VİDEOSUNU GETİRECEĞİZ
