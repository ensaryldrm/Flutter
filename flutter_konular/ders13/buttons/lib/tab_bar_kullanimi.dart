import 'package:buttons/sayfa1.dart';
import 'package:buttons/sayfa2.dart';
import 'package:buttons/sayfa3.dart';

import 'package:flutter/material.dart';

class TabBarKullanimi extends StatefulWidget {
  const TabBarKullanimi({super.key});

  @override
  State<TabBarKullanimi> createState() => _TabBarKullanimiState();
}

class _TabBarKullanimiState extends State<TabBarKullanimi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 10, 117, 127),
          foregroundColor: Colors.white,
          title: Text("Tab Bar Kullanımı"),
          bottom: TabBar(
            labelColor: Colors.white, // SEÇİLMİŞ OLAN KUTUNUN RENK
            indicatorColor: Colors.white, // ALT ÇİZGİ RENK
            unselectedLabelColor: Colors.black, // SEÇİLMEMİŞ OLAN KUTUNUN RENK
            tabs: [
              Tab(child: Icon(Icons.looks_one)),
              Tab(child: Icon(Icons.looks_two)),
              Tab(child: Icon(Icons.looks_3)),
            ],
          ),
        ),
        body: TabBarView(children: [Sayfa1(), Sayfa2(), Sayfa3()]),
      ),
    );
  }
}

/*
  Tabs kullanılarak aynı ekranda birden fazla sayfayı gösterebiliriz.
  Tablara tıklayarak veya parmak hareketi ( sağ - sol ) ile sayfalar arasından geçiş yapabiliriz.
*/
