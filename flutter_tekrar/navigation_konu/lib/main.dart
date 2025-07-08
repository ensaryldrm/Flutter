import 'package:flutter/material.dart';
import 'package:navigation_konu/red_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigatorKullanimi(),
    );
  }
}

class NavigatorKullanimi extends StatefulWidget {
  const NavigatorKullanimi({super.key});

  @override
  State<NavigatorKullanimi> createState() => _NavigatorKullanimiState();
}

class _NavigatorKullanimiState extends State<NavigatorKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
        backgroundColor: Colors.brown.shade600,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // KIRMIZI SAYFA
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade400,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () async {
                int? gelenSayi = await Navigator.of(
                  context,
                ).push<int>(MaterialPageRoute(builder: (context) => RedPage()));
                debugPrint(gelenSayi.toString());
              },
              child: Text("Kırmızı Sayfaya Git"),
            ),

            // MAVİ SAYFA
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade400,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {},
              child: Text("Mavi Sayfaya Git"),
            ),

            // YEŞİL SAYFA
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade400,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {},
              child: Text("Yeşil Sayfaya Git"),
            ),
          ],
        ),
      ),
    );
  }
}
