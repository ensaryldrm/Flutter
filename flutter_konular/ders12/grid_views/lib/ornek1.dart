import 'package:flutter/material.dart';

class Ornek1 extends StatefulWidget {
  const Ornek1({super.key});

  @override
  State<Ornek1> createState() => _Ornek1State();
}

class _Ornek1State extends State<Ornek1> {
  List<String> yemekler = [
    "Yaprak Sarma",
    "Karnıyarık",
    "Izgara Kanat",
    "Çerkes Tavuğu",
    "Velibah",
    "Kabin",
    "Pasta Şipsi",
    "Cağ Kebabı",
    "Mantı",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(199, 50, 120, 90),
        foregroundColor: Colors.white,
        title: Text("Örnek1:Grid View"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: GridView.builder(
          itemCount: yemekler.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(yemekler[index])],
              ),
            );
          },
        ),
      ),
    );
  }
}
