import 'package:flutter/material.dart';
import 'package:list_view_ornekleri/views/appBar.dart';

class Rehberuygulamasi extends StatefulWidget {
  const Rehberuygulamasi({super.key});

  @override
  State<Rehberuygulamasi> createState() => _RehberuygulamasiState();
}

class _RehberuygulamasiState extends State<Rehberuygulamasi> {
  String appBarBaslik = "Rehber Uygulaması";
  Color appBarRenk = Color(0xff107050);

  List<String> kisiList = [
    "Ahmet Yılmaz",
    "Sevil Koca",
    "Berrin Akyürek",
    "İbrahim Tatlıses",
    "Mehmet Gümüş",
    "Selim Kiraz",
    "Sevgi Kara",
    "Süleyman Alptekin",
    "Arif Aknar",
    "Bersu Cangöz",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(appBarBaslik, appBarRenk),
      body: ListView.builder(
        itemCount: kisiList.length,
        itemBuilder: (context, index) {
          return KisilerCard(kisi: kisiList[index]);
        },
      ),
    );
  }
}

class KisilerCard extends StatefulWidget {
  final String kisi;
  KisilerCard({required this.kisi});

  @override
  State<KisilerCard> createState() => _KisilerCardState();
}

class _KisilerCardState extends State<KisilerCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      color: Color(0xff909070),
      child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage("images/1.png")),
        title: Text(
          widget.kisi,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "0535 582 38 00",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
