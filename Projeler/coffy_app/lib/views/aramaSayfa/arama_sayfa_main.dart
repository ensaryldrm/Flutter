import 'package:coffy_app/data/urunler.dart';
import 'package:coffy_app/widgets/arama_listview.dart';
import 'package:flutter/material.dart';

class AramaSayfaMain extends StatefulWidget {
  const AramaSayfaMain({super.key});

  @override
  State<AramaSayfaMain> createState() => _AramaSayfaMainState();
}

class _AramaSayfaMainState extends State<AramaSayfaMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 236, 240),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Arama", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      hintText: "Hangi Coffy lezzetini istersin?",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Popüler Aramalar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1, color: Colors.grey),
                      ),
                      child: Text("Iced Latte", style: TextStyle(fontSize: 10)),
                    ),
                    SizedBox(width: 10),
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1, color: Colors.grey),
                      ),
                      child: Text("Americano", style: TextStyle(fontSize: 10)),
                    ),
                    SizedBox(width: 10),

                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1, color: Colors.grey),
                      ),
                      child: Text("Donut", style: TextStyle(fontSize: 10)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Çok Satanlar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(child: AramaListview(enCokSatanlar: enCokSatanlarList))
        ],
      ),
    );
  }
}
