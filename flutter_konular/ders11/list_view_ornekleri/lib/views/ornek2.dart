import 'dart:math';
import 'package:flutter/material.dart';
import 'package:list_view_ornekleri/views/appBar.dart';

class Ornek2 extends StatefulWidget {
  const Ornek2({super.key});

  @override
  State<Ornek2> createState() => _Ornek2State();
}

class _Ornek2State extends State<Ornek2> {
  String myAppBarBaslik = "Örnek: 2: Resim ve Yazı Ekleme";
  Color myAppBarRenk = Color.fromARGB(200, 157, 13, 28);

  @override
  Widget build(BuildContext context) {
    List<String> kisiList = [
      "Sevil Aydın",
      "Berke Özdemir",
      "Zehra Gümüşbıçak",
      "Aycan Mutlu",
      "Serpil Ulus",
      "Aydan Özdemir",
      "Zeynep Akmar",
      "Lütfü Sarı",
      "Ece Uslu",
      "Can Apaydın",
    ];

    List<String> resimList = [
      "1.png",
      "2.png",
      "3.png",
      "4.png",
      "5.png",
      "6.png",
      "7.png",
      "8.png",
      "9.png",
      "10.png",
    ];

    return Scaffold(
      appBar: myAppBar(myAppBarBaslik, myAppBarRenk),
      body: ListView.builder(
        itemCount: kisiList.length,
        itemBuilder: (context, index) {
          return KisiKart(names: kisiList[index], images: resimList[index]);
        },
      ),
    );
  }
}

class KisiKart extends StatefulWidget {
  final String names;
  final String images;

  const KisiKart({required this.images, required this.names});

  @override
  State<KisiKart> createState() => _KisiKartState();
}

class _KisiKartState extends State<KisiKart> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
      ),
      child: SizedBox(
        height: 75,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/${widget.images}"),
            radius: 25,
          ),
          title: Text("${widget.names}"),
          subtitle: Text("0535 582 38 00"),
          trailing: Icon(Icons.phone_android),
        ),
      ),
    );
  }
}
