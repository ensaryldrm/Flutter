import 'package:flutter/material.dart';

class SabitListviewKullanimi extends StatefulWidget {
  const SabitListviewKullanimi({super.key});

  @override
  State<SabitListviewKullanimi> createState() => _SabitListviewKullanimiState();
}

class _SabitListviewKullanimiState extends State<SabitListviewKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sabit ListView Kullanımı"),
        backgroundColor: Colors.lightBlueAccent.shade400,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.wb_auto),
            title: Text("Başlık"),
            subtitle: Text("Alt Başlık"),
            trailing: Icon(Icons.arrow_circle_down_outlined),
            tileColor: Colors.amber,
            onTap: () {
              debugPrint("Listile a tıklandı");
            },
          ),
          InkWell(
            onTap: () {
              debugPrint("Card tıklandı!");
            },
            child: Card(
              child: SizedBox(
                height: 70,
                child: Row(
                  children: [
                    Text("Card Tasarımı"),
                    Spacer(),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              debugPrint("Container tıklandı!");
            },
            child: Container(
              child: Text("Merhaba"),
              height: 70,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
