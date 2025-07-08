import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Yeşil Sayfa"),
        backgroundColor: Colors.green.shade400,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          "Yeşil Sayfa",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
