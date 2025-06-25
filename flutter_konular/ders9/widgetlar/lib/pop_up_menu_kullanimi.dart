import 'package:flutter/material.dart';

class PopUpMenuKullanimi extends StatefulWidget {
  const PopUpMenuKullanimi({super.key});

  @override
  State<PopUpMenuKullanimi> createState() => _PopUpMenuKullanimiState();
}

class _PopUpMenuKullanimiState extends State<PopUpMenuKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pop Up Menü Kullanımı"),
        backgroundColor: Color(0xff993060),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PopupMenuButton(
              child: Icon(Icons.menu),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Güncelle",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),

                  PopupMenuItem(
                    value: 2,
                    child: Text("Sil", style: TextStyle(color: Colors.red)),
                  ),
                ];
              },
              onCanceled: () => print("Seçin Yapılmadı!"),
              onSelected: (value) {
                if (value == 1) {
                  print("Güncellendi!");
                } else if (value == 2) {
                  print("Silindi!");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
