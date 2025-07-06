import 'package:coffy_app/views/kayitOncesiSayfa/kayitSayfaTasarim.dart';
import 'package:flutter/material.dart';

class KayitSayfaScaffold extends StatelessWidget {
  const KayitSayfaScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 236, 240),
      body: KayitOncesiTasarim(),
    );
  }
}