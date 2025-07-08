import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool degistiMi = true;

  void yaziDegistir() {
    setState(() {
      degistiMi = !degistiMi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Stateful Widget Örnek"), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(degistiMi ? "Softito" : "Profesyonel Eğitim"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: yaziDegistir,
                child: Text("Yazı değiştir"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
