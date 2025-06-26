import 'package:flutter/material.dart';


class AnaSayfaMaterialApp extends StatelessWidget {
  const AnaSayfaMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: anaSayfa(),
    );
  }
}

class anaSayfa extends StatefulWidget {
  const anaSayfa({super.key});

  @override
  State<anaSayfa> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa> {
  List<String> notList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: notList.map((not) => Text(not)).toList(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        
      }),
    );
  }
}