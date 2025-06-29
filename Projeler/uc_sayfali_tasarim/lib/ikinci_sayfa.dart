import 'package:flutter/material.dart';
import 'package:uc_sayfali_tasarim/ana_sayfa.dart';

class IkinciSayfa extends StatefulWidget {
  const IkinciSayfa({super.key});

  @override
  State<IkinciSayfa> createState() => _IkinciSayfaState();
}

class _IkinciSayfaState extends State<IkinciSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Satır 1
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 34,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // GERİ BUTON
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) => AnaSayfa(),
                                ),
                              );
                            },
                            child: Container(
                              width: 34,
                              height: 34,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "resimler/ikinci_sayfa/geri_buton.png",
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // Yazı
                          Container(
                            alignment: Alignment.center,
                            width: 259,
                            height: 23,
                            child: Text(
                              "Today task",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          // Kalem İşareti
                          Container(
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "resimler/ikinci_sayfa/kalem.png",
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

              // Satır 2
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 301,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // İLK YAZI
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  "UX Desing for MONS\ncalendar",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // İkinci Profil + Yazı
                          Row(
                            children: [
                              // kadın foto
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "resimler/ikinci_sayfa/kadin.png",
                                    ),
                                  ),
                                ),
                              ),

                              // Birinci Yazı
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Created by",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),

                              // İkinci Yazı
                              Container(
                                child: Text(
                                  "Username",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // üçüncü büyük yazı
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Text(
                                    "In publishing and graphic design,Lorem ipsum is a placeholder The point of using Lorom Ipsum is that it has a more-or-less normal distribution of letters.",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // dördüncü bayraklı yazı
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

                          // beşinci konteyner + yazılar
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
                                        margin: EdgeInsets.only(left: 10),
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

                                      // Birinci Yazı
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Text(
                                          "stop starting, start finishing",
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

                          // Resimler + yazı
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      // FOTOĞRAFLAR
                                      Container(
                                        child: Row(
                                          children: [
                                            // çoklu resim
                                            Container(
                                              width: 83,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "resimler/ikinci_sayfa/coklu_resim.png",
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // +4 YAZISI
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
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

              // Satır 3
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Subtask",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),

              // Satır 4
              Container(
                height: 233,
                width: 335,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // birinci konteyner
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 30),
                            height: 88,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 233, 245, 245),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                        padding:
                                                            EdgeInsets.only(
                                                              left: 5,
                                                            ),
                                                        child: Text(
                                                          "6 hours",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
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
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 24,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  "resimler/birinci_sayfa/kontrol_kutu.png",
                                                ),
                                              ),
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

                    // ikinci konteyner
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 30),
                            height: 88,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 228, 242, 251),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                        padding:
                                                            EdgeInsets.only(
                                                              left: 5,
                                                            ),
                                                        child: Text(
                                                          "6 hours",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
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
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 24,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  "resimler/birinci_sayfa/kontrol_kutu.png",
                                                ),
                                              ),
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

                    // + add subtask yazısı
                    Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              // artı
                              Container(
                                width: 16,
                                height: 16,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "resimler/ikinci_sayfa/arti.png",
                                    ),
                                  ),
                                ),
                              ),

                              // yazı
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Add subtask",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 60, 137, 241),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Satır 5
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        "Attachment",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
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
    );
  }
}
