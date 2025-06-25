import 'package:flutter/material.dart';
import 'package:list_view_ornekleri/views/ornek2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Ornek2());
  }
}
