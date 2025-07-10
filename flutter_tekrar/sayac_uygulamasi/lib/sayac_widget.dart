import 'package:flutter/material.dart';

class SayacWidget extends StatefulWidget {
  const SayacWidget({super.key});

  @override
  State<SayacWidget> createState() => SayacWidgetState();
}

class SayacWidgetState extends State<SayacWidget> {
  int _Sayac = 0;

  void sayacArttir() {
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
