import 'package:flutter/material.dart';
import 'package:yemek_uygulama/modals/eat.dart';

class DetaySayfa extends StatefulWidget {
  final Yemek yemek;

  const DetaySayfa({required this.yemek});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.yemek.yemekAd} Detay"),
        backgroundColor: Color.fromARGB(255, 172, 7, 7),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
                right: 50,
                top: 50,
                bottom: 10,
              ),
              child: Container(
                child: Container(
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage(widget.yemek.imgUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Yemek İsim: ${widget.yemek.yemekAd}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text(
                "Yemek fiyat: ${widget.yemek.yemekFiyat.toString()}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Açıklama: ${widget.yemek.aciklama}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
