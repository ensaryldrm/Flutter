import 'package:flutter/material.dart';
import 'package:list_view_ornekleri/views/appBar.dart';

class Ornek1 extends StatefulWidget {
  const Ornek1({super.key});

  @override
  State<Ornek1> createState() => _Ornek1State();
}

class _Ornek1State extends State<Ornek1> {
  String appBarBaslik = "Örnek 1: Araba Listesi";
  Color appBarRenk = Color(0xff306090);

  List<String> arabaList = [
    "Ford",
    "Honda",
    "Mazda",
    "Lexus",
    "Toyota",
    "Lamborghini",
    "Ferrari",
    "Hyundai",
    "Kia",
    "TOGG",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(appBarBaslik, appBarRenk),
      body: ListView.builder(
        itemCount: arabaList.length,
        itemBuilder: (context, index) {
          return ArabaCard(araba: arabaList[index], index: index);
        },
      ),
    );
  }
}

class ArabaCard extends StatefulWidget {
  final String araba;
  final int index;
  ArabaCard({required this.araba, required this.index});

  @override
  State<ArabaCard> createState() => _ArabaCardState();
}

class _ArabaCardState extends State<ArabaCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Text("${widget.index + 1}")),
        title: Text("${widget.araba}"),
        subtitle: Text("${widget.index + 1}- ${widget.araba}"),
        trailing: Icon(Icons.car_rental),
      ),
    );
  }
}

// YAPACAKLARIMIZ:
/*
 *  String olan içeriği kafanıza göre bir liste oluşturun ( Kişi Olması Yasak ) 
 *  Leading de sayı yazsın
 *  Title da liste yazsın
 *  subtitle 1- buggsbunny
 *  trailing: Icon Olsun
 *  bunları ListView Builder da döndür
 */
