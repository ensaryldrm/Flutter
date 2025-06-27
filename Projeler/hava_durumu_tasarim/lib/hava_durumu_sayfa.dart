import 'package:flutter/material.dart';

class HavaDurumuSayfa extends StatefulWidget {
  const HavaDurumuSayfa({super.key});

  @override
  State<HavaDurumuSayfa> createState() => _HavaDurumuSayfaState();
}

class _HavaDurumuSayfaState extends State<HavaDurumuSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 155, 233),
      body: HavaDurumuSayfaTasarim(),
    );
  }
}

class HavaDurumuSayfaTasarim extends StatefulWidget {
  const HavaDurumuSayfaTasarim({super.key});

  @override
  State<HavaDurumuSayfaTasarim> createState() => _HavaDurumuSayfaTasarimState();
}

class _HavaDurumuSayfaTasarimState extends State<HavaDurumuSayfaTasarim> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 90, left: 35, right: 35),
        child: Column(
          children: [
            // İLK SATIR - ÜST KONUM / ŞEHİR İSMİ
            Container(
              height: 30,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 30,

                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            child: Image.asset(
                              "images/konum.png",
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            alignment: Alignment.center,
                            height: 30,
                            child: Text(
                              "Fortaleza",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            child: Image.asset(
                              "images/alt_ok.png",
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerRight,
                      height: 30,

                      child: Image.asset("images/bildirim.png"),
                    ),
                  ),
                ],
              ),
            ),

            // İKİNCİ SATIR - BÜYÜK RESİM
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/gunesli_bulut.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
