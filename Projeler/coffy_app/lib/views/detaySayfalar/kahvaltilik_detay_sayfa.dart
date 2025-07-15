import 'package:coffy_app/modals/urun.dart';
import 'package:flutter/material.dart';

class KahvaltilikDetaySayfa extends StatefulWidget {
  final Urun urun;
  const KahvaltilikDetaySayfa({required this.urun,super.key});

  @override
  State<KahvaltilikDetaySayfa> createState() => _KahvaltilikDetaySayfaState();
}

class _KahvaltilikDetaySayfaState extends State<KahvaltilikDetaySayfa> {

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
                          "${widget.urun.fiyat.toStringAsFixed(0)} TL",
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
                        ),
                        onPressed: () {},
                        child: Text(
                          "Sepete ekle",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(widget.urun.resimUrl),
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 20),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 116, 194, 181),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.urun.ad,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(children: [Text("Güzel içecek")]),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 116, 194, 181),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      "+1",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Text(
                                    "Bu ürün ile 1 adet Çekirdek kazanma fırsatı!",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Material(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              color: Colors.white,
                              elevation: 5,
                              child: Container(
                                width: 100,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 30,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey.shade200,
                                      ),
                                      child: Icon(Icons.remove),
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      width: 30,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    height: 180,
                    color: Colors.white,
                    child: Column(
                      children: [
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Not Ekle",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 100,
                                child: TextField(
                                  maxLines: 6,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hint: Text(
                                      "Notunu bu alana yazabilirsin.",
                                      style: TextStyle(
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
