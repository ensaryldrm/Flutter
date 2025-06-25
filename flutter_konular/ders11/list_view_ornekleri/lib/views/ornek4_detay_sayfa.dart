import 'package:flutter/material.dart';
import 'package:list_view_ornekleri/modals/user.dart';
import 'package:list_view_ornekleri/views/appBar.dart';

class Ornek4DetaySayfa extends StatefulWidget {
  final User user;

  const Ornek4DetaySayfa({required this.user});

  @override
  State<Ornek4DetaySayfa> createState() => _Ornek4DetaySayfaState();
}

class _Ornek4DetaySayfaState extends State<Ornek4DetaySayfa> {
  String myAppBarBaslik = "Detay Sayfa";
  Color myAppBarRenk = Color.fromARGB(250, 10, 140, 180);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(myAppBarBaslik, myAppBarRenk),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              child: Image.asset(widget.user.imgURL),
            ),
            SizedBox(height: 20),
            Text(
              "Ensar Yıldırım",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "0535 582 38 00",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
