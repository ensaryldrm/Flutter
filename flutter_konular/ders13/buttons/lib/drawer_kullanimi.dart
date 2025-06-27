import 'package:buttons/sayfa1.dart';
import 'package:buttons/sayfa2.dart';
import 'package:buttons/sayfa3.dart';
import 'package:flutter/material.dart';

class DrawerKullanimi extends StatefulWidget {
  const DrawerKullanimi({super.key});

  @override
  State<DrawerKullanimi> createState() => _DrawerKullanimiState();
}

class _DrawerKullanimiState extends State<DrawerKullanimi> {
  List<Widget> sayfaList = [Sayfa1(), Sayfa2(), Sayfa3()];
  int secilenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade700,
        foregroundColor: Colors.white,
        title: Text("Drawer Kullanımı"),
      ),
      body: sayfaList[secilenIndex],
      drawer: Drawer(
        width: 230,
        backgroundColor: Colors.blueGrey.shade200,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // ANA BAŞLIK
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: DrawerHeader(
                  margin: EdgeInsets.only(
                    top: 10,
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade700,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Butonlar",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Ana Sayfa"),
              onTap: () {
                setState(() {
                  secilenIndex = 0;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Ayarlar"),
              onTap: () {
                setState(() {
                  secilenIndex = 1;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.place_rounded),
              title: Text("Konum"),
              onTap: () {
                setState(() {
                  secilenIndex = 2;
                  Navigator.pop(context);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
