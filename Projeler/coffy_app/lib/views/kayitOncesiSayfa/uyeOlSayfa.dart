import 'package:flutter/material.dart';

class UyeOlSayfa extends StatefulWidget {
  const UyeOlSayfa({super.key});

  @override
  State<UyeOlSayfa> createState() => _UyeOlSayfaState();
}

class _UyeOlSayfaState extends State<UyeOlSayfa> {
  @override
  Widget build(BuildContext context) {
    TextEditingController telNoText = TextEditingController();
    TextEditingController adText = TextEditingController();
    TextEditingController soyadText = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("COFFY", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
