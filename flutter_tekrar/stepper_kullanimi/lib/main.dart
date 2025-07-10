import 'package:flutter/material.dart';
import 'package:stepper_kullanimi/stepper_kullanimi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: StepperKullanimi(),
    );
  }
}
