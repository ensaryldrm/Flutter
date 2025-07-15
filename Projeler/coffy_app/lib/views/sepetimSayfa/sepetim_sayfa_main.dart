import 'package:coffy_app/data/urunler.dart';
import 'package:coffy_app/widgets/yatay_en_cok_satanlar_list.dart';
import 'package:flutter/material.dart';

class SepetimSayfaMain extends StatefulWidget {
  const SepetimSayfaMain({super.key});

  @override
  State<SepetimSayfaMain> createState() => _SepetimSayfaMainState();
}

class _SepetimSayfaMainState extends State<SepetimSayfaMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 25, right: 25, bottom: 30),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "0 TL",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color.fromARGB(255, 116, 194, 181),
                          disabledBackgroundColor: Colors.grey.shade300,
                          disabledForegroundColor: Colors.grey,
                        ),
                        onPressed: null,
                        child: Text(
                          "Devam Et",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 235, 236, 240),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        title: Text(
          "Sepetim",
          style: TextStyle(color: Colors.grey.shade300, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade200,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blueGrey.shade600,
                    width: 1.5,
                  ),
                ),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 100,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Sepetinde Ürün Bulunmamaktadır!")],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 210,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Alışverişe Başla",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 60),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25),
                child: Text(
                  "Sana Eşlik Etsin",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 180,child: YatayEnCokSatanlarList(enCokSatanlar: enCokSatanlarList)),
        ],
      ),
    );
  }
}
