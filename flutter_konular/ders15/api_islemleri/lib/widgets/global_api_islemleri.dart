import 'package:flutter/material.dart';

class GlobalApiIslemleri extends StatefulWidget {
  const GlobalApiIslemleri({super.key});

  @override
  State<GlobalApiIslemleri> createState() => _GlobalApiIslemleriState();
}

class _GlobalApiIslemleriState extends State<GlobalApiIslemleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Global API"),
        backgroundColor: Colors.purple.shade400,
        foregroundColor: Colors.white,
      ),
    );
  }
}
