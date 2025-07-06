import 'package:flutter/material.dart';
import 'package:uc_sayfali_tasarim/ikinci_sayfa.dart';
import 'package:uc_sayfali_tasarim/ucuncu_sayfa.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() =>
      _AnaSayfaState();
}

class _AnaSayfaState
    extends State<AnaSayfa> {
  List<Widget> sayfaListesi = [
    BirinciSayfa(),
    IkinciSayfa(),
    UcuncuSayfa(),
  ];
  int secilenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfaListesi[secilenIndex],
      bottomNavigationBar: Container(
        height: 60,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(
          bottom: 30,
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color:
                  Colors.grey.shade500,
              blurRadius: 10,
              spreadRadius: 0.2,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment
                  .spaceEvenly,
          children: [
            // Ana Sayfa Buton
            InkWell(
              onTap: () {
                setState(() {
                  secilenIndex = 0;
                });
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "resimler/birinci_sayfa/ev_buton.png",
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            // Arama Butonu
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "resimler/birinci_sayfa/arama_buton.png",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Kontrol Butonu
            InkWell(
              onTap: () {
                setState(() {
                  secilenIndex = 1;
                });
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "resimler/birinci_sayfa/kontrol_buton.png",
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            // Bildirim Butonu
            InkWell(
              onTap: () {
                setState(() {
                  secilenIndex = 2;
                });
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "resimler/birinci_sayfa/bildirim_buton.png",
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            // Profil Foto
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "resimler/birinci_sayfa/sol_ust_kadin.png",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BirinciSayfa
    extends StatefulWidget {
  const BirinciSayfa({super.key});

  @override
  State<BirinciSayfa> createState() =>
      _BirinciSayfaState();
}

class _BirinciSayfaState
    extends State<BirinciSayfa> {
  bool basildiMi = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      // SOLDA HEP SABİT 30 PİKSEL BOŞLUK OLACAK
      padding: const EdgeInsets.only(
        left: 30,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // BİRİNCİ SATIR
            Padding(
              padding:
                  const EdgeInsets.only(
                    top: 50,
                  ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: Row(
                        children: [
                          // RESİM
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "resimler/birinci_sayfa/sol_ust_kadin.png",
                                ),
                              ),
                            ),
                          ),

                          // HELLO YAZISI
                          Container(
                            margin:
                                EdgeInsets.only(
                                  left:
                                      10,
                                ),
                            child: Text(
                              "Hello,",
                              style: TextStyle(
                                fontSize:
                                    16,
                                fontWeight:
                                    FontWeight.w400,
                              ),
                            ),
                          ),

                          // USERNAME YAZISI
                          Container(
                            child: Text(
                              "Username",
                              style: TextStyle(
                                fontSize:
                                    16,
                                fontWeight:
                                    FontWeight.w700,
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

            // İKİNCİ SATIR
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                    child: Row(
                      children: [
                        // 4 NEW YAZISI
                        Container(
                          child: Text(
                            "4 New",
                            style: TextStyle(
                              fontSize:
                                  16,
                              fontWeight:
                                  FontWeight
                                      .w700,
                            ),
                          ),
                        ),

                        // TASKS TODAY  YAZISI
                        Container(
                          margin:
                              EdgeInsets.only(
                                left:
                                    10,
                              ),
                          child: Text(
                            "tasks today",
                            style: TextStyle(
                              fontSize:
                                  14,
                              fontWeight:
                                  FontWeight
                                      .w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // ÜÇÜNCÜ SATIR
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 245,
                    child: ListView(
                      scrollDirection:
                          Axis.horizontal,
                      children: [
                        // 1. BÜYÜK KONTEYNER
                        Container(
                          width: 245,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(
                                  20,
                                ),
                            color:
                                Color.fromARGB(
                                  255,
                                  255,
                                  231,
                                  205,
                                ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  15,
                            ),
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceEvenly,
                              children: [
                                // BİRİNCİ YAZI
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "UX Desing for MONS calendar",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // İKİNCİ BAYRAKLI YAZI
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 24,
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 24,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "resimler/birinci_sayfa/kirmizi_bayrak.png",
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Container(
                                              child: Text(
                                                "Oct 25, 2025",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // ÜÇÜNCÜ YAZI
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "n publishing and graphic d与好nlor中n psum is a plocehold时",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // DÖRDÜNCÜ KONTEYNERLER
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Row(
                                          children: [
                                            // BİRİNCİ KONTEYNER
                                            Container(
                                              alignment: Alignment.center,
                                              height: 37,
                                              width: 52,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                  255,
                                                  255,
                                                  153,
                                                  35,
                                                ),
                                                borderRadius: BorderRadius.circular(
                                                  20,
                                                ),
                                              ),
                                              child: Text(
                                                "High",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),

                                            // İKİNCİ KONTEYNER
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 10,
                                              ),
                                              alignment: Alignment.center,
                                              height: 37,
                                              width: 72,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                  255,
                                                  137,
                                                  104,
                                                  255,
                                                ),
                                                borderRadius: BorderRadius.circular(
                                                  20,
                                                ),
                                              ),
                                              child: Text(
                                                "5 Scare",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // BEŞİNCİ FOTOĞRAFLAR
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Row(
                                          children: [
                                            // FOTOĞRAFLAR
                                            Container(
                                              child: Stack(
                                                children: [
                                                  // birinci resim
                                                  Container(
                                                    width: 32,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          "resimler/birinci_sayfa/kadin1.png",
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  // ikinci resim
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 16,
                                                    ),
                                                    width: 32,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          "resimler/birinci_sayfa/kadin2.png",
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  // üçüncü resim
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 32,
                                                    ),
                                                    width: 32,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          "resimler/birinci_sayfa/kadin3.png",
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  // dördüncü resim
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 48,
                                                    ),
                                                    width: 32,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          "resimler/birinci_sayfa/kadin4.png",
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            // +4 YAZISI
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 5,
                                              ),
                                              child: Text(
                                                "+4",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
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

                        SizedBox(
                          width: 10,
                        ),

                        // 2. BÜYÜK KONTEYNER
                        Container(
                          width: 245,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(
                                  20,
                                ),
                            color:
                                Color.fromARGB(
                                  255,
                                  194,
                                  221,
                                  254,
                                ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  15,
                            ),
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceEvenly,
                              children: [
                                // BİRİNCİ YAZI
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "UX Desing for MONS calendar",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // İKİNCİ BAYRAKLI YAZI
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 24,
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 24,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "resimler/birinci_sayfa/kirmizi_bayrak.png",
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Container(
                                              child: Text(
                                                "Oct 25, 2025",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // ÜÇÜNCÜ YAZI
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "n publishing and graphic d与好nlor中n psum is a plocehold时",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // DÖRDÜNCÜ KONTEYNERLER
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Row(
                                          children: [
                                            // BİRİNCİ KONTEYNER
                                            Container(
                                              alignment: Alignment.center,
                                              height: 37,
                                              width: 52,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                  255,
                                                  255,
                                                  153,
                                                  35,
                                                ),
                                                borderRadius: BorderRadius.circular(
                                                  20,
                                                ),
                                              ),
                                              child: Text(
                                                "High",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),

                                            // İKİNCİ KONTEYNER
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 10,
                                              ),
                                              alignment: Alignment.center,
                                              height: 37,
                                              width: 72,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                  255,
                                                  137,
                                                  104,
                                                  255,
                                                ),
                                                borderRadius: BorderRadius.circular(
                                                  20,
                                                ),
                                              ),
                                              child: Text(
                                                "5 Scare",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // BEŞİNCİ FOTOĞRAFLAR
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Row(
                                          children: [
                                            // FOTOĞRAFLAR
                                            Container(
                                              child: Stack(
                                                children: [
                                                  // birinci resim
                                                  Container(
                                                    width: 32,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          "resimler/birinci_sayfa/ikinciKadin1.png",
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  // ikinci resim
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 16,
                                                    ),
                                                    width: 32,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          "resimler/birinci_sayfa/ikinciKadin2.png",
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  // üçüncü resim
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 32,
                                                    ),
                                                    width: 32,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          "resimler/birinci_sayfa/ikinciKadin3.png",
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  // dördüncü resim
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 48,
                                                    ),
                                                    width: 32,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          "resimler/birinci_sayfa/ikinciKadin4.png",
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            // +4 YAZISI
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 5,
                                              ),
                                              child: Text(
                                                "+4",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
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

                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // Dördüncü Satır
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin:
                        EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "To",
                            style: TextStyle(
                              fontSize:
                                  14,
                              fontWeight:
                                  FontWeight
                                      .w400,
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(
                                left:
                                    10,
                                right:
                                    10,
                              ),
                          child: Text(
                            "Do",
                            style: TextStyle(
                              fontSize:
                                  16,
                              fontWeight:
                                  FontWeight
                                      .w700,
                            ),
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          child: CircleAvatar(
                            backgroundColor:
                                Color.fromARGB(
                                  255,
                                  226,
                                  238,
                                  238,
                                ),
                            child: Text(
                              "3",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // BEŞİNCİ SATIR
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 158,
                    child: ListView(
                      scrollDirection:
                          Axis.horizontal,
                      children: [
                        // BİRİNCİ KONTEYNER
                        Container(
                          margin:
                              EdgeInsets.only(
                                right:
                                    10,
                              ),
                          width: 160,
                          height: 158,
                          decoration: BoxDecoration(
                            color:
                                Color.fromARGB(
                                  255,
                                  253,
                                  238,
                                  233,
                                ),
                            borderRadius:
                                BorderRadius.circular(
                                  20,
                                ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal:
                                  15,
                            ),
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceEvenly,
                              children: [
                                // BİRİNCİ SATIR
                                Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Urgent",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromARGB(
                                            255,
                                            255,
                                            29,
                                            44,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // İKİNCİ SATIR
                                Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "UX Degisn for\nMONS\ncalendar",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // ÜÇÜNCÜ SATIR
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 24,
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 24,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "resimler/birinci_sayfa/kirmizi_bayrak.png",
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Container(
                                              child: Text(
                                                "Oct 25, 2025",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
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

                        // İKİNCİ KONTEYNER
                        Container(
                          margin:
                              EdgeInsets.only(
                                right:
                                    10,
                              ),
                          width: 160,
                          height: 158,
                          decoration: BoxDecoration(
                            color:
                                Color.fromARGB(
                                  255,
                                  233,
                                  245,
                                  245,
                                ),
                            borderRadius:
                                BorderRadius.circular(
                                  20,
                                ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal:
                                  15,
                            ),
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceEvenly,
                              children: [
                                // BİRİNCİ SATIR
                                Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Urgent",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromARGB(
                                            255,
                                            255,
                                            29,
                                            44,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // İKİNCİ SATIR
                                Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "UX Degisn for\nMONS\ncalendar",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // ÜÇÜNCÜ SATIR
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 24,
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 24,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "resimler/birinci_sayfa/kirmizi_bayrak.png",
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Container(
                                              child: Text(
                                                "Oct 25, 2025",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
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

                        // ÜÇÜNCÜ KONTEYNER
                        Container(
                          width: 160,
                          height: 158,
                          decoration: BoxDecoration(
                            color:
                                Color.fromARGB(
                                  255,
                                  238,
                                  236,
                                  250,
                                ),
                            borderRadius:
                                BorderRadius.circular(
                                  20,
                                ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal:
                                  15,
                            ),
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceEvenly,
                              children: [
                                // BİRİNCİ SATIR
                                Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Urgent",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromARGB(
                                            255,
                                            255,
                                            29,
                                            44,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // İKİNCİ SATIR
                                Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "UX Degisn for\nMONS\ncalendar",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // ÜÇÜNCÜ SATIR
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 24,
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 24,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "resimler/birinci_sayfa/kirmizi_bayrak.png",
                                                  ),
                                                ),
                                              ),
                                            ),

                                            Container(
                                              child: Text(
                                                "Oct 25, 2025",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
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
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // ALTINCI SATIR
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin:
                        EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "In",
                            style: TextStyle(
                              fontSize:
                                  16,
                              fontWeight:
                                  FontWeight
                                      .w700,
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(
                                left:
                                    10,
                                right:
                                    10,
                              ),
                          child: Text(
                            "Progress",
                            style: TextStyle(
                              fontSize:
                                  14,
                              fontWeight:
                                  FontWeight
                                      .w400,
                            ),
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          child: CircleAvatar(
                            backgroundColor:
                                Color.fromARGB(
                                  255,
                                  255,
                                  231,
                                  205,
                                ),
                            child: Text(
                              "3",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // YEDİNCİ SATIR
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin:
                        EdgeInsets.only(
                          right: 30,
                        ),
                    height: 88,
                    decoration: BoxDecoration(
                      color:
                          Color.fromARGB(
                            255,
                            233,
                            245,
                            245,
                          ),
                      borderRadius:
                          BorderRadius.circular(
                            20,
                          ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.all(
                            10,
                          ),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceEvenly,
                        children: [
                          // BİRİNCİ SÜTUN
                          Flexible(
                            flex: 7,
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: [
                                  // BİRİNCİ SATIR
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 24,
                                          child: Text(
                                            "UX Desing for MONS calendar",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  // İKİNCİ SATIR
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 24,
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 24,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "resimler/birinci_sayfa/gri_bayrak.png",
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 5,
                                                ),
                                                child: Text(
                                                  "6 hours",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
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
                          // İKİNCİ SÜTÜN
                          Flexible(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,
                              children: [
                                Expanded(
                                  child: Container(
                                    width:
                                        24,
                                    child: Checkbox(
                                      value: basildiMi,
                                      onChanged:
                                          (
                                            deger,
                                          ) {
                                            setState(
                                              () {
                                                basildiMi = !basildiMi;
                                              },
                                            );
                                          },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
