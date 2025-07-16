import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProject(),
    );
  }
}

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API İşlemleri"),
        backgroundColor: Colors.red,
      ),
      body: Center(child: Column(
        children: [
          ElevatedButton(onPressed: (){}, child: Text("İşlem Yap"))
        ],
      ),),
    );
  }
}