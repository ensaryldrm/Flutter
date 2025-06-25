import 'dart:math';

import 'package:flutter/material.dart';

class ImagesExample extends StatefulWidget {
  const ImagesExample({super.key});

  @override
  State<ImagesExample> createState() => _ImagesExampleState();
}

class _ImagesExampleState extends State<ImagesExample> {
  List<String> cicekler = [
    "1.jpeg",
    "2.jpeg",
    "3.jpeg",
    "4.jpeg",
    "5.jpeg",
    "6.jpeg",
  ];
  final ImageFolder = "images/";
  Random r = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İmages Example", style: TextStyle(fontSize: 27)),
        backgroundColor: const Color.fromARGB(255, 1, 135, 5),
        foregroundColor: const Color.fromARGB(255, 241, 136, 225),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(ImageFolder + cicekler[r.nextInt(6) + 1]),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //int sayi = r.nextInt(6) + 1;
                setState(() {});
              },
              child: Text("Resmi değiştir."),
            ),
          ],
        ),
      ),
    );
  }
}
