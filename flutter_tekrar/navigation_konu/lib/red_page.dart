import 'dart:math';

import 'package:flutter/material.dart';
import 'package:navigation_konu/green_page.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});

  int _rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Kırmızı Sayfa"),
          backgroundColor: Colors.red.shade400,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Kırmızı Sayfa",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown.shade400,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  _rastgeleSayi = Random().nextInt(101);
                  Navigator.of(context).pop(_rastgeleSayi);
                },
                child: Text("Ana Sayfaya Geri Dön"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
