import 'package:flutter/material.dart';

class AppBarOzellikleri extends StatefulWidget {
  const AppBarOzellikleri({super.key});

  @override
  State<AppBarOzellikleri> createState() => _AppBarOzellikleriState();
}

class _AppBarOzellikleriState extends State<AppBarOzellikleri> {
  bool aramaYapiliyorMu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff503070),
        foregroundColor: Colors.white,
        title: aramaYapiliyorMu
            ? TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: "Arama için birşey yazınız",
                ),
                /*onChanged: (value) {
                  print("Arama sonucu $value");
                },*/
                onSubmitted: (value) {
                  print("Sonuc: $value");
                },
              )
            : Text("Appbar Arama"),
        actions: [
          aramaYapiliyorMu
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = false;
                    });
                  },
                  icon: Icon(Icons.cancel),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = true;
                    });
                  },
                  icon: Icon(Icons.search),
                ),
        ],
      ),
    );
  }
}

class PopupMenuAppbar extends StatelessWidget {
  const PopupMenuAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff503070),
        foregroundColor: Colors.white,
        //UST MENU
        centerTitle: false,
        title: Column(
          children: [
            Text(
              "Ana Başlık",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "Alt Başlık",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        ),

        // LEADING: UST MENU SOL
        leading: IconButton(
          onPressed: () => print("Buton çalıştı!"),
          icon: Icon(Icons.menu),
        ),

        // ACTIONS: UST MENU SAĞ
        actions: [
          TextButton(
            onPressed: () {
              print("Çıkış Yapıldı");
            },
            child: Text("Çıkış", style: TextStyle(color: Colors.white)),
          ),
          IconButton(
            onPressed: () => print("Bilgi alındı!"),
            icon: Icon(Icons.info_outline),
          ),

          PopupMenuButton(
            child: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Güncelle"), value: 1),
              PopupMenuItem(child: Text("Sil"), value: 2),
            ],
            onSelected: (value) {
              if (value == 1) {
                debugPrint("Güncellendi!");
              }
              if (value == 2) {
                debugPrint("Silindi!");
              }
            },
          ),
        ],

        //
      ),
    );
  }
}

class AppBarNormal extends StatelessWidget {
  const AppBarNormal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff503070),
        foregroundColor: Colors.white,
        //UST MENU
        centerTitle: false,
        title: Column(
          children: [
            Text(
              "Ana Başlık",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "Alt Başlık",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        ),

        // LEADING: UST MENU SOL
        leading: IconButton(
          onPressed: () => print("Buton çalıştı!"),
          icon: Icon(Icons.menu),
        ),

        // ACTIONS: UST MENU SAĞ
        actions: [
          TextButton(
            onPressed: () {
              print("Çıkış Yapıldı");
            },
            child: Text("Çıkış", style: TextStyle(color: Colors.white)),
          ),
          IconButton(
            onPressed: () => print("Bilgi alındı!"),
            icon: Icon(Icons.info_outline),
          ),
          IconButton(
            onPressed: () {
              print("Menü açıldı");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],

        //
      ),
    );
  }
}
