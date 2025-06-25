import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  List<String> ulkelerList = [];
  String secilenUlke = "Türkiye";

  @override
  void initState() {
    super.initState();
    ulkelerList = [
      "Türkiye",
      "Almanya",
      "Hollanda",
      "İspanya",
      "İngiltere",
      "Fransa",
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down Button"),
        backgroundColor: Color(0xff993060),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: secilenUlke,
              items: ulkelerList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(
                    "Ülke: $value",
                    style: TextStyle(fontSize: 30, color: Colors.pink),
                  ),
                );
              }).toList(),

              onChanged: (String? gelenVeri) {
                setState(() {
                  secilenUlke = gelenVeri!;
                  print("Seçilen ülke: $secilenUlke");
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
