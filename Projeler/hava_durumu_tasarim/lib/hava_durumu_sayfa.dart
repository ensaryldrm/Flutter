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


class HavaDurumuSayfaTasarim extends StatelessWidget {
  const HavaDurumuSayfaTasarim({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // İLK SATIR
          Padding(
            padding: const EdgeInsets.only(top: 75),
            // EN ÜST İÇİN SATIRA ALDIM
            child: Row(
             children: [
              // SATIRI DAHA DÜZENLİ TUTMAK İÇİN KOMPLE KONTEYNER İLE KAPLADIM
              Flexible(child: Container(
              height: 40,child: Row(
                children: [
                  // KONUM İŞARETİ İÇİN KONTEYNER VERDİM
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width: 40,
                      child: Image.asset("images/konum.png",color: Colors.white,),
                    ),
                  ),
      
                  // YAZI İŞARETİ İÇİN KONTEYNER VERDİM
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 78,
                      child: Text("Fortaleza", style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),
      
                  // AŞAĞIYA BAKAN OK İŞARETİ İÇİN KONTEYNER VERDİM
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    width: 40,
                    child: Image.asset("images/alt_ok.png", color: Colors.white,),
                  ),
      
                  // BİLDİRİM İŞARETİ İÇİN KONTEYNER VERDİM
                  Padding(
                    padding: const EdgeInsets.only(left: 112),
                    child: Container(
                      width: 100,
                      child: Image.asset("images/bildirim.png"),
                    ),
                  )
                ],
              ),
              )
              )]
            ),
          ),
      
          // BÜYÜK RESİM 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // RESİMİ BÜYÜTMEK İÇİN KONTEYNERA ALDIM
              Padding(
                padding: const EdgeInsets.only(top: 1, left: 50, right: 50),
                child: Container(
                  width: 230,
                  height: 230,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/gunesli_bulut.png"),fit: BoxFit.cover)
                  ),
                ),
              ),
      
      
            ],
          ),
        
          // BÜYÜK RESİM ALTI YAZILAR
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 3 KONTEYNERI KAPSAYAN KONTEYNER
              Container(
                width: 200,
                height: 150,
                child: Column(
                  children: [
                    // 30 DERECE YAZISI
                    Container(child: Text("30°",style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),)),
      
                    // ORTA YAZI
                    Container(padding: EdgeInsets.only(right: 16),child: Text("Precipitations", style: TextStyle(color: Colors.white, fontSize: 15),)),
      
                    // ALT YAZI
                    Container(padding: EdgeInsets.only(left: 15),width: 200,child: Text("Max.:34° Min.:28°", style: TextStyle(color: Colors.white,fontSize: 20),))
                  ],
                ),
              )
            ],
          ),
        
          // İLK RADIUSLU KONTEYNER
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                // TÜM SATIRI KAPLADIM KONTROL AMAÇLI
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 1, 95, 150),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    height: 50,
                    child: Row(
                      children: [
                        // YAĞMUR DAMLALARI VE YAZI
                        Container(
                          padding: EdgeInsets.only(left: 25),
                          child: Row(
                            children: [
                              Image.asset("images/parcacikli_damlalar.png"),
                              Text("18%", style: TextStyle(color: Colors.white),)
                            ],
                          )
                        ),
                        SizedBox(width: 40,),
      
                        // TERMOMETRE VE YAZI
                        Container(
                          padding: EdgeInsets.only(left: 25),
                          child: Row(
                            children: [
                              Image.asset("images/termometre.png"),
                              Text("67%", style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                        SizedBox(width: 36,),
                        
                        // RÜZGAR VE YAZI
                        Container(
                          padding: EdgeInsets.only(left: 25),
                          child: Row(
                            children: [
                              Image.asset("images/termometre.png"),
                              Text("25 km/h", style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        
          SizedBox(height: 20,),

          // ORTA RADIUSLU KONTEYNER 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 1, 95, 150),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                height: 45,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 30,),

          // SON RADIUSLU KONTEYNER
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 1, 95, 150),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                  ),
                ),
              )
            ],
          )
          ,SizedBox(height: 10,)
        ],
      ),
    );
  }
}