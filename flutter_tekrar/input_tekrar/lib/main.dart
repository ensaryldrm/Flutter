import 'package:flutter/material.dart';
import 'package:input_tekrar/text_form_field_tekrar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextFormFieldTekrar(),
    );
  }
}
