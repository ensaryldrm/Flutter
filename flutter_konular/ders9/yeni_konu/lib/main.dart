import 'package:flutter/material.dart';
import 'package:yeni_konu/web_view_kullanim.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebViewKullanimi(),
    );
  }
}
