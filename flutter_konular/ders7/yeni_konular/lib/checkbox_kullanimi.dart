import 'package:flutter/material.dart';

class CheckBoxKullanimi extends StatefulWidget {
  const CheckBoxKullanimi({super.key});

  @override
  State<CheckBoxKullanimi> createState() => _CheckBoxKullanimiState();
}

class _CheckBoxKullanimiState extends State<CheckBoxKullanimi> {
  bool dartDurum = false;
  bool kotlinDurum = false;
  String secimKotlin = "Sevmiyor";
  String secimDart = "Sevmiyor";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Kullanimi"),
        backgroundColor: Colors.pink.shade900,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // KOTLIN DURUM
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.red, // TİK RENGİ
              activeColor: Colors.grey, // TİK ARKA PLAN RENGİ
              title: Text("Kotlin"),
              value: kotlinDurum,
              onChanged: (gelenVeri) {
                setState(() {
                  kotlinDurum = gelenVeri!;
                  secimKotlin = kotlinDurum ? "seviyor" : "sevmiyor";
                });
              },
            ),
            // DART DURUM
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.red, // TİK RENGİ
              activeColor: Colors.grey,
              title: Text("Dart"),
              value: dartDurum,
              onChanged: (gelenVeri) {
                setState(() {
                  dartDurum = gelenVeri!;
                  secimDart = dartDurum ? "seviyor" : "sevmiyor";
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Kullanıcı dartı $secimDart, kotlini $secimKotlin",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
