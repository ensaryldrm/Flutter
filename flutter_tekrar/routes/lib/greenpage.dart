import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  final String ad;
  const GreenPage({required this.ad});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Green Page"),
        backgroundColor: Colors.green.shade600,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Merhaba ${ad} Bey",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
