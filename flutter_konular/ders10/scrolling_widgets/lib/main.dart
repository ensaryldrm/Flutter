import 'package:flutter/material.dart';
import 'package:scrolling_widgets/dinamik_listview_kullanimi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DinamikListviewKullanimi(),
    );
  }
}
