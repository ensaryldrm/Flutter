import 'package:coffy_app/views/kayitOncesiSayfa/kayitOncesiSayfa.dart';
import 'package:flutter/material.dart';

class MaterialAppMetod extends StatelessWidget {
  const MaterialAppMetod({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KayitOncesiSayfa(),
    );
  }
}