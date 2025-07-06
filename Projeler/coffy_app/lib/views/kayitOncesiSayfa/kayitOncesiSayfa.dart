import 'package:coffy_app/views/kayitOncesiSayfa/scaffold.dart';
import 'package:flutter/material.dart';

class KayitOncesiSayfa extends StatefulWidget {
  const KayitOncesiSayfa({super.key});

  @override
  State<KayitOncesiSayfa> createState() => _KayitOncesiSayfaState();
}

class _KayitOncesiSayfaState extends State<KayitOncesiSayfa> {
  @override
  Widget build(BuildContext context) {
    return KayitSayfaScaffold();
  }
}