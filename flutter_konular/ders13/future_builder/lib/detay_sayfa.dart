import 'package:flutter/material.dart';
import 'package:future_builder/modals/yemek.dart';

class DetaySayfa extends StatefulWidget {
  final Yemek yemek;

  DetaySayfa({required this.yemek});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  bool siparisVerildiMi = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: Text("${widget.yemek.yemekAdi} Bilgilendirme Sayfası"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                width: 230,
                height: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrange,
                      blurRadius: 30,
                      spreadRadius: 10,
                    ),
                  ],
                  border: Border.all(color: Colors.black, width: 1),
                  image: DecorationImage(
                    image: AssetImage(widget.yemek.yemekResimAdi),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                "Yemek: ${widget.yemek.yemekAdi}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(1),
              child: Text(
                "Fiyat: ${widget.yemek.yemekFiyat}TL",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 330),
            SizedBox(
              width: 250,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    siparisVerildiMi = !siparisVerildiMi;
                  });
                },
                child: Text(
                  siparisVerildiMi ? "Sipariş Verildi!" : "Sipariş Ver",
                ),

                style: ElevatedButton.styleFrom(
                  backgroundColor: siparisVerildiMi
                      ? Colors.green.shade600
                      : Colors.orange.shade400,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
