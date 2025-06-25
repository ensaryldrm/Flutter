import 'package:flutter/material.dart';

class RadioButtonKullanimi extends StatefulWidget {
  const RadioButtonKullanimi({super.key});

  @override
  State<RadioButtonKullanimi> createState() => _RadioButtonKullanimiState();
}

class _RadioButtonKullanimiState extends State<RadioButtonKullanimi> {
  int radioDeger = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button Kullanımı"),
        backgroundColor: Colors.brown.shade900,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
              activeColor: Colors.red,
              title: Text("Hiçbiri"),
              value: 0,
              groupValue: radioDeger,
              onChanged: (veri) {
                setState(() {
                  radioDeger = veri!;
                });
              },
            ),

            RadioListTile(
              visualDensity: VisualDensity(horizontal: -4),
              activeColor: Colors.red,
              title: Text("Erkek"),
              value: 1,
              groupValue: radioDeger,
              onChanged: (veri) {
                setState(() {
                  radioDeger = veri!;
                });
              },
            ),

            RadioListTile(
              activeColor: Colors.red,
              title: Text("Kadın"),
              value: 2,
              groupValue: radioDeger,
              onChanged: (veri) {
                setState(() {
                  radioDeger = veri!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
