import 'package:flutter/material.dart';

class TasarimTekrar extends StatefulWidget {
  const TasarimTekrar({super.key});

  @override
  State<TasarimTekrar> createState() => _TasarimTekrarState();
}

class _TasarimTekrarState extends State<TasarimTekrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 170, 178, 130),
        title: Text("Row - Column Tekrar"),
        foregroundColor: Colors.white,
      ),
      body: Container(),
    );
  }
}
