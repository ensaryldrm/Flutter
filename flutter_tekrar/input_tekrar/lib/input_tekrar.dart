import 'package:flutter/material.dart';

class InputTekrar extends StatefulWidget {
  const InputTekrar({super.key});

  @override
  State<InputTekrar> createState() => _InputTekrarState();
}

class _InputTekrarState extends State<InputTekrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Tekrar"),
        backgroundColor: const Color.fromARGB(255, 255, 99, 99),
        foregroundColor: Colors.white,
      ),
      body: Column(),
    );
  }
}
