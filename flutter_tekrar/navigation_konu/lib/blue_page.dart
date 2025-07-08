import 'package:flutter/material.dart';

class BluePage extends StatelessWidget {
  const BluePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mavi Sayfa"),
        backgroundColor: Colors.blue.shade400,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          "Mavi Sayfa",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
