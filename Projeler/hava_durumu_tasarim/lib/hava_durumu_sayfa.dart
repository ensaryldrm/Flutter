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
      backgroundColor: Color.fromARGB(255, 71, 187, 225),
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

            // İKİNCİ SATIR - BÜYÜK RESİM ve YAZILAR
            Stack(
              children: [
                Column(
                  children: [
                    // BÜYÜK RESİM
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 210,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "images/gunesli_bulut.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    // YAZILAR
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            // 30 DERECE YAZISI
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.topCenter,
                                  width: 120,
                                  height: 80,

                                  margin: EdgeInsets.only(left: 15, bottom: 15),
                                  child: Text(
                                    "30°",
                                    style: TextStyle(
                                      fontSize: 70,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // ORTA YAZI
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),

                                  child: Text(
                                    "Precipitations",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // SON DERECE YAZILARI
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text(
                                    "Max.: 34°",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: Text(
                                    "Min.: 28°",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            // İLK RADIUSLU KONTEYNER
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(100, 16, 64, 132),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.asset("images/parcacikli_damlalar.png"),
                              Text(
                                "18%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Image.asset("images/termometre.png"),
                              Text(
                                "67%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Image.asset("images/kucuk_ruzgar.png"),
                              Text(
                                "25km/h",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // İKİNCİ RADIUSLU BUYUK KONTEYNER
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(100, 16, 64, 132),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        // TODAY VE MAR YAZISI
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Today",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),

                                      Container(
                                        child: Text(
                                          "Mar,10",
                                          style: TextStyle(
                                            color: Colors.grey.shade100,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // YAZILAR, HAVA DURUMLARI VE SAATLER
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // İLK SÜTUN
                                      Column(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: 80,

                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  // DERECE
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          height: 40,
                                                          child: Text(
                                                            "31°C",
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey
                                                                  .shade200,
                                                              fontSize: 18,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  // RESİM
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          height: 80,
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                              image: AssetImage(
                                                                "images/kucuk_gunesli_bulut.png",
                                                              ),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  // SAAT
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          height: 40,

                                                          child: Text(
                                                            "15.00",
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey
                                                                  .shade200,
                                                              fontSize: 18,
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

                                      // İKİNCİ SÜTUN
                                      Column(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: 80,

                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  // DERECE
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          height: 40,
                                                          child: Text(
                                                            "30°C",
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey
                                                                  .shade200,
                                                              fontSize: 18,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  // RESİM
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          height: 80,
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                              image: AssetImage(
                                                                "images/kucuk_gunesli_bulut.png",
                                                              ),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  // SAAT
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          height: 40,

                                                          child: Text(
                                                            "16.00",
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey
                                                                  .shade200,
                                                              fontSize: 18,
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

                                      // ÜÇÜNCÜ SÜTUN
                                      Column(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: 80,

                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  // DERECE
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          height: 40,
                                                          child: Text(
                                                            "28°C",
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey
                                                                  .shade200,
                                                              fontSize: 18,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  // RESİM
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          height: 80,
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                              image: AssetImage(
                                                                "images/kucuk_bulut.png",
                                                              ),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  // SAAT
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          height: 40,

                                                          child: Text(
                                                            "17.00",
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey
                                                                  .shade200,
                                                              fontSize: 18,
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

                                      // DÖRDÜNCÜ SÜTUN
                                      Column(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: 80,

                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  // DERECE
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          height: 40,
                                                          child: Text(
                                                            "28°C",
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey
                                                                  .shade200,
                                                              fontSize: 18,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  // RESİM
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          height: 80,
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                              image: AssetImage(
                                                                "images/hilalli_bulut.png",
                                                              ),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  // SAAT
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          height: 40,

                                                          child: Text(
                                                            "18.00",
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey
                                                                  .shade200,
                                                              fontSize: 18,
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

            // ÜÇÜNCÜ RADIUSLU KONTEYNER
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(100, 16, 64, 132),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // NEXT FORECAST YAZISI VE TAKVİM PNG
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Next Forecast",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),

                                      Container(
                                        child: Image.asset("images/takvim.png"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // GÜNLER PNGLER VE DERECELER

                        // 1. SATIR
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 40,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        // GÜN İSMİ
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.only(left: 20),
                                            alignment: Alignment.centerLeft,
                                            height: 40,
                                            child: Text(
                                              "Monday",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),

                                        // KÜÇÜK RESİMLER
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  "images/yagmur.png",
                                                ),
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),

                                        // DERECELER
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 40,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    height: 40,

                                                    child: Text(
                                                      "13°C",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    height: 40,
                                                    child: Text(
                                                      "10°C",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey
                                                            .shade400,
                                                      ),
                                                    ),
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

                        // 2. SATIR
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 40,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        // GÜN İSMİ
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.only(left: 20),
                                            alignment: Alignment.centerLeft,
                                            height: 40,
                                            child: Text(
                                              "Tuesday",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),

                                        // KÜÇÜK RESİMLER
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  "images/yildirimli_bulut.png",
                                                ),
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),

                                        // DERECELER
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 40,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    height: 40,

                                                    child: Text(
                                                      "17°C",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    height: 40,
                                                    child: Text(
                                                      "12°C",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey
                                                            .shade400,
                                                      ),
                                                    ),
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

                        // 3. SATIR
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 40,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        // GÜN İSMİ
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.only(left: 20),
                                            alignment: Alignment.centerLeft,
                                            height: 40,
                                            child: Text(
                                              "Monday",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),

                                        // KÜÇÜK RESİMLER
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  "images/gunesli_bulut.png",
                                                ),
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),

                                        // DERECELER
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 40,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    height: 40,

                                                    child: Text(
                                                      "13°C",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    height: 40,
                                                    child: Text(
                                                      "10°C",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey
                                                            .shade100,
                                                      ),
                                                    ),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
