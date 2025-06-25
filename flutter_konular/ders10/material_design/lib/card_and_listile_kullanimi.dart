import 'package:flutter/material.dart';
import 'package:material_design/app_bar_ozellikleri.dart';
import 'package:material_design/main.dart';

class CardAndListileKullanimi extends StatefulWidget {
  const CardAndListileKullanimi({super.key});

  @override
  State<CardAndListileKullanimi> createState() =>
      _CardAndListileKullanimiState();
}

class _CardAndListileKullanimiState extends State<CardAndListileKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      appBar: AppBar(
        title: Text("Listile Kullanımı"),
        backgroundColor: Color(0xff100100100),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.wb_sunny, color: Colors.grey.shade800),
                title: Text("Güneş"),
                subtitle: Text("Alt başlık"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardOrnek extends StatelessWidget {
  const CardOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      appBar: AppBar(
        title: Text("Card Kullanımı"),
        backgroundColor: Color(0xff509040),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CARDIN DIŞI
            SizedBox(
              width: 300,
              height: 150,
              // CARD
              child: Card(
                color: Color(0xff509040),
                elevation: 10,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.cyan, width: 3),
                ),

                // CARD İÇERİSİ
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Toplam Puan: ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, size: 40, color: Colors.amber),
                            Text(
                              "150",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
