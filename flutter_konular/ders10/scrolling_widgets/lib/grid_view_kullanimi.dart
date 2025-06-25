import 'package:flutter/material.dart';

class GridViewKullanimi extends StatefulWidget {
  const GridViewKullanimi({super.key});

  @override
  State<GridViewKullanimi> createState() => _GridViewKullanimiState();
}

class _GridViewKullanimiState extends State<GridViewKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sabit Grid View Kullanımı"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 2 / 1,
        children: [
          GestureDetector(
            onTap: () => debugPrint("Güneşe Tıklandı!"),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.wb_sunny),
                  SizedBox(height: 3),
                  Text("Güneş"),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () => debugPrint("Aya Tıklandı!"),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.brightness_2), Text("Ay")],
              ),
            ),
          ),

          GestureDetector(
            onTap: () => debugPrint("Yıldıza Tıklandı!"),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.star_border), Text("Yıldız")],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
