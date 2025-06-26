import 'package:flutter/material.dart';

class YatayListView extends StatefulWidget {
  const YatayListView({super.key});

  @override
  State<YatayListView> createState() => _YatayListViewState();
}

class _YatayListViewState extends State<YatayListView> {
  List<String> ilceler = [
    "Çekmeköy",
    "Üsküdar",
    "Ümraniye",
    "Şile",
    "Sultanbeyli",
    "Mecidiyeköy",
    "Bağcılar",
    "Kadıköy",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yatay List View"),
        backgroundColor: Color.fromARGB(255, 175, 80, 130),
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Başlangıç"),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ilceler.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Color.fromARGB(50, 175, 80, 130),
                  child: SizedBox(
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text(ilceler[index])],
                    ),
                  ),
                );
              },
            ),
          ),
          Text("Bitiş"),
        ],
      ),
    );
  }
}
