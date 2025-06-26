import 'package:flutter/material.dart';
import 'package:grid_views/detay_sayfa.dart';

class Ornek2 extends StatefulWidget {
  const Ornek2({super.key});

  @override
  State<Ornek2> createState() => _Ornek2State();
}

class _Ornek2State extends State<Ornek2> {
  List<String> yemekler = [
    "İskender",
    "Karışık Kebap",
    "Köfte Izgara",
    "Kokoreç",
    "Kuzu Şiş",
    "Kuzu Tandır",
    "Lahmacun",
    "Mumbar",
    "Sarma Ciğer",
    "Tantuni",
  ];

  List<String> yemekFoto = [
    "images/iskender.png",
    "images/karisik_kebap.png",
    "images/kofte_izgara.png",
    "images/kokorec.png",
    "images/kuzu_sis.png",
    "images/kuzu_tandir.png",
    "images/lahmacun.png",
    "images/mumbar.png",
    "images/sarma_ciger.png",
    "images/tantuni.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(199, 50, 120, 90),
        foregroundColor: Colors.white,
        title: Text("Örnek2:Grid View"),
      ),
      backgroundColor: Colors.grey.shade600,
      body: GridView.builder(
        itemCount: yemekler.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 5,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetaySayfa(
                    imgUrl: yemekFoto[index],
                    yemekIsim: yemekler[index],
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      yemekler[index],
                      style: TextStyle(
                        shadows: [Shadow(color: Colors.black, blurRadius: 45)],
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 55, 50, 50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1.7,
                      blurRadius: 5,
                      offset: Offset(0.2, 0.2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.red.shade800, width: 1),
                  image: DecorationImage(
                    image: AssetImage(yemekFoto[index]),
                    opacity: 0.7,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}


/*
 *  İSTEKLER
 * 
 * 1) Bir satırda 2 tane elemanı olan oranlaması 3/5 olan grid view oluştur
 * 2) Elemanları Container olacak. Bunda gölge, radius, çerçeve olacak
 * 3) Bu containerın arka plan resmi olacak, soluk olacak, üzerinde de yemeğin ismi yazacak
 * 
 * NOT: Eşit elemana ait yemek ve resim listeleri olmalı
 */