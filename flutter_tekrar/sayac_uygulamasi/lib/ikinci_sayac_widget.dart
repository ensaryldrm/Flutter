import 'package:flutter/material.dart';

class IkinciSayacWidget extends StatefulWidget {
  const IkinciSayacWidget({super.key});

  @override
  State<IkinciSayacWidget> createState() => IkinciSayacWidgetState();
}

class IkinciSayacWidgetState extends State<IkinciSayacWidget> {
  int _Sayac = 1;

  void IkinciSayacArttir() {
    setState(() {
      _Sayac++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _Sayac.toString(),
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    );
  }
}
