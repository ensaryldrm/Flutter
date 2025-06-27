import 'package:flutter/material.dart';

class DrawerKullanimi extends StatefulWidget {
  const DrawerKullanimi({super.key});

  @override
  State<DrawerKullanimi> createState() => _DrawerKullanimiState();
}

class _DrawerKullanimiState extends State<DrawerKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade400,
        foregroundColor: Colors.white,
        title: Text("Drawer Kullanımı"),
      ),
    );
  }
}
