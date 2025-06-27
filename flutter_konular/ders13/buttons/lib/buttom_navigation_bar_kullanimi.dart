import 'package:buttons/sayfa1.dart';
import 'package:buttons/sayfa2.dart';
import 'package:buttons/sayfa3.dart';
import 'package:flutter/material.dart';

class ButtomNavigationBarKullanimi extends StatefulWidget {
  const ButtomNavigationBarKullanimi({super.key});

  @override
  State<ButtomNavigationBarKullanimi> createState() =>
      _ButtomNavigationBarKullanimiState();
}

class _ButtomNavigationBarKullanimiState
    extends State<ButtomNavigationBarKullanimi> {
  // STATE ÖZELLİĞİ OLAN SEÇİLEN BOTTOMNAVIGATIONBAR İÇİN INDEXİ TAKİP EDEN DEĞİŞKEN
  int secilenIndex = 0;

  // EKRANDA GÖSTERMEK İÇİN İSTEDİĞİMİZ SAYFALARIN LİSTESİ
  List<Widget> sayfaListesi = [Sayfa1(), Sayfa2(), Sayfa3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
        backgroundColor: Colors.blueGrey.shade700,
        foregroundColor: Colors.white,
      ),
      body: sayfaListesi[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade700,
        currentIndex: secilenIndex,
        backgroundColor: Colors.blueGrey.shade300,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Sayfa 1"),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: "Sayfa 2",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: "Sayfa 3"),
        ],
        onTap: (index) {
          setState(() {
            secilenIndex = index;
          });
        },
      ),
    );
  }
}
