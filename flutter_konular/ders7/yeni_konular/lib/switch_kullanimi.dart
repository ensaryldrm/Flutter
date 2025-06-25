import 'package:flutter/material.dart';

class SwitchKullanimi extends StatefulWidget {
  const SwitchKullanimi({super.key});

  @override
  State<SwitchKullanimi> createState() => _SwitchKullanimiState();
}

class _SwitchKullanimiState extends State<SwitchKullanimi> {
  bool switchKontrol = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Kullanımı"),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                thumbIcon: WidgetStateProperty.resolveWith((icon) {
                  return Icon(Icons.add);
                }),
                activeThumbImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/FullMoon2010.jpg/960px-FullMoon2010.jpg",
                ),
                activeColor: Colors.black,
                activeTrackColor: Colors.blueGrey,
                inactiveTrackColor: Colors.cyan.shade600,
                inactiveThumbColor: Colors.black,
                value:
                    switchKontrol, // ilk baştaki halinin değeri true ise açık geliyor false ise kapalı geliyor
                onChanged: (gelenVeri) {
                  setState(() {
                    switchKontrol = gelenVeri;
                  });
                },
              ),
              Text(switchKontrol ? "Açık" : "Kapalı"),
            ],
          ),
        ),
      ),
    );
  }
}
