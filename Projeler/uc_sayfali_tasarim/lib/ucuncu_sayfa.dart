import 'package:flutter/material.dart';

class UcuncuSayfa extends StatefulWidget {
  const UcuncuSayfa({super.key});

  @override
  State<UcuncuSayfa> createState() => _UcuncuSayfaState();
}

class _UcuncuSayfaState extends State<UcuncuSayfa> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 47,
          top: 50,
        ),
        child: Column(
          children: [
            Container(
              height: 729,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // birinci row
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 34,
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "Sep,2025",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  width: 34,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "resimler/ucuncu_sayfa/asagiya_bakan_ok.png",
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
                  ),

                  // ikinci row
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 44,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(left: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            // YAZI 1
                                            Container(
                                              width: 20,
                                              height: 17,
                                              child: Text(
                                                "M",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),

                                            // YAZI 2
                                            Container(
                                              width: 20,
                                              height: 17,
                                              child: Text(
                                                "T",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),

                                            // YAZI 3
                                            Container(
                                              width: 20,
                                              height: 17,
                                              child: Text(
                                                "W",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),

                                            // YAZI 4
                                            Container(
                                              width: 20,
                                              height: 17,
                                              child: Text(
                                                "T",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromARGB(
                                                    255,
                                                    252,
                                                    151,
                                                    41,
                                                  ),
                                                ),
                                              ),
                                            ),

                                            // YAZI 5
                                            Container(
                                              width: 20,
                                              height: 17,
                                              child: Text(
                                                "F",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),

                                            // YAZI 6
                                            Container(
                                              width: 20,
                                              height: 17,
                                              child: Text(
                                                "S",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),

                                            // YAZI 7
                                            Container(
                                              width: 20,
                                              height: 17,
                                              child: Text(
                                                "S",
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

                                // İKİNCİ YAZILAR
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 3,
                                        ),
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            // YAZI 1
                                            Container(
                                              width: 20,
                                              height: 17,
                                              child: Text(
                                                "17",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),

                                            // YAZI 2
                                            Container(
                                              width: 20,
                                              height: 17,
                                              child: Text(
                                                "18",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),

                                            // YAZI 3
                                            Container(
                                              width: 20,
                                              height: 17,
                                              child: Text(
                                                "19",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),

                                            // YAZI 4
                                            Container(
                                              width: 20,
                                              height: 17,
                                              child: Text(
                                                "20",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                    255,
                                                    252,
                                                    151,
                                                    41,
                                                  ),
                                                ),
                                              ),
                                            ),

                                            // YAZI 5
                                            Container(
                                              width: 20,
                                              height: 17,
                                              child: Text(
                                                "21",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),

                                            // YAZI 6
                                            Container(
                                              width: 20,
                                              height: 17,
                                              child: Text(
                                                "22",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),

                                            // YAZI 7
                                            Container(
                                              width: 20,
                                              height: 17,
                                              child: Text(
                                                "23",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
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
                  ),

                  // üçüncü row
                  Flexible(
                    flex: 19,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // BİRİNCİ SATIR
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 81,
                                        child: Row(
                                          children: [
                                            // SAAT YAZISI
                                            Container(
                                              width: 48,
                                              height: 17,
                                              child: Text(
                                                "09:00",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),

                                            // ÇİZGİ VE KONTEYNER
                                            Expanded(
                                              child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  // DÜZ ÇİZGİ
                                                  Container(
                                                    height: 2,
                                                    color: Color.fromARGB(
                                                      255,
                                                      217,
                                                      217,
                                                      217,
                                                    ),
                                                  ),

                                                  // KONTEYNER
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 30,
                                                    ),
                                                    padding: EdgeInsets.only(
                                                      left: 20,
                                                    ),
                                                    width: 227,
                                                    height: 81,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                        255,
                                                        255,
                                                        233,
                                                        209,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            child: Row(
                                                              children: [
                                                                // TURUNCU KONTEYNER
                                                                Container(
                                                                  width: 6,
                                                                  height: 41,
                                                                  decoration: BoxDecoration(
                                                                    color:
                                                                        Color.fromARGB(
                                                                          255,
                                                                          252,
                                                                          151,
                                                                          41,
                                                                        ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          5,
                                                                        ),
                                                                  ),
                                                                ),

                                                                // YAZILAR
                                                                Container(
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      // ÜST YAZI
                                                                      Row(
                                                                        children: [
                                                                          Container(
                                                                            padding: EdgeInsets.only(
                                                                              left: 10,
                                                                            ),
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            width:
                                                                                171,
                                                                            height:
                                                                                19,
                                                                            child: Text(
                                                                              "Project Discussion",
                                                                              style: TextStyle(
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w700,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),

                                                                      // ALT YAZI
                                                                      Row(
                                                                        children: [
                                                                          Container(
                                                                            padding: EdgeInsets.only(
                                                                              left: 10,
                                                                            ),
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            width:
                                                                                171,
                                                                            height:
                                                                                19,
                                                                            child: Text(
                                                                              "09:00AM - 10:00AM",
                                                                              style: TextStyle(
                                                                                fontSize: 14,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),

                                                                      // ALTI YAZI
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
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

                                // İKİNCİ SATIR
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 17,
                                        child: Row(
                                          children: [
                                            // YAZI
                                            Container(
                                              width: 48,
                                              child: Text(
                                                "10:00",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),

                                            // GRİ ÇİZGİ
                                            Expanded(
                                              child: Container(
                                                height: 2,
                                                color: Color.fromARGB(
                                                  255,
                                                  217,
                                                  217,
                                                  217,
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
                                        height: 137,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  // KÜÇÜK KONTEYNER
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    width: 48,
                                                    height: 64,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        // BİRİNCİ YAZI
                                                        Container(
                                                          height: 17,
                                                          child: Text(
                                                            "11:00",
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ),

                                                        // İKİNCİ YUVARLAK
                                                        Container(
                                                          width: 10,
                                                          height: 10,
                                                          decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  100,
                                                                ),
                                                            color:
                                                                Color.fromARGB(
                                                                  255,
                                                                  62,
                                                                  194,
                                                                  184,
                                                                ),
                                                          ),
                                                        ),

                                                        // ÜÇÜNCÜ YAZI
                                                        Container(
                                                          height: 17,
                                                          child: Text(
                                                            "12:00",
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  // MAVİ UZUN ÇİZGİ
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                      left: 15,
                                                    ),
                                                    height: 64,
                                                    child: Divider(
                                                      height: 2,
                                                      color: Color.fromARGB(
                                                        255,
                                                        62,
                                                        194,
                                                        184,
                                                      ),
                                                    ),
                                                  ),

                                                  // BÜYÜK KONTEYNER
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 80,
                                                    ),
                                                    width: 335,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                      color: Color.fromARGB(
                                                        255,
                                                        233,
                                                        245,
                                                        245,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            height: 137,
                                                            child: Row(
                                                              children: [
                                                                // KÜÇÜK MAVİ KONTEYNER
                                                                Container(
                                                                  margin:
                                                                      EdgeInsets.only(
                                                                        left:
                                                                            20,
                                                                      ),
                                                                  width: 6,
                                                                  height: 97,
                                                                  decoration: BoxDecoration(
                                                                    color:
                                                                        Color.fromARGB(
                                                                          255,
                                                                          62,
                                                                          194,
                                                                          184,
                                                                        ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          5,
                                                                        ),
                                                                  ),
                                                                ),

                                                                // YAZILAR
                                                                Expanded(
                                                                  child: Container(
                                                                    margin: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          10,
                                                                    ),
                                                                    height: 97,
                                                                    child: Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        // YAZI 1
                                                                        Row(
                                                                          children: [
                                                                            Container(
                                                                              height: 19,
                                                                              child: Text(
                                                                                "Project Discussion",
                                                                                style: TextStyle(
                                                                                  fontSize: 16,
                                                                                  fontWeight: FontWeight.w700,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),

                                                                        // İKİNCİ YAZI
                                                                        Row(
                                                                          children: [
                                                                            Container(
                                                                              height: 60,
                                                                              child: Text(
                                                                                "Many desktop publishin图\nPoca0转 and web page oditors now\nuso",
                                                                                style: TextStyle(
                                                                                  fontSize: 14,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),

                                                                        // üçüncü yazı
                                                                        Row(
                                                                          children: [
                                                                            Container(
                                                                              height: 17,
                                                                              child: Text(
                                                                                "09:00AM - 10:00AM",
                                                                                style: TextStyle(
                                                                                  fontSize: 14,
                                                                                  fontWeight: FontWeight.w400,
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
                                                          ),
                                                        ),
                                                      ],
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

                                // DÖRDÜNCÜ SATIR
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 81,
                                        child: Row(
                                          children: [
                                            // SAAT YAZISI
                                            Container(
                                              width: 48,
                                              height: 17,
                                              child: Text(
                                                "13:30",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),

                                            // ÇİZGİ VE KONTEYNER
                                            Expanded(
                                              child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  // DÜZ ÇİZGİ
                                                  Container(
                                                    height: 2,
                                                    color: Color.fromARGB(
                                                      255,
                                                      217,
                                                      217,
                                                      217,
                                                    ),
                                                  ),

                                                  // KONTEYNER
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 30,
                                                    ),
                                                    padding: EdgeInsets.only(
                                                      left: 20,
                                                    ),
                                                    width: 227,
                                                    height: 81,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromARGB(
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
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            child: Row(
                                                              children: [
                                                                // TURUNCU KONTEYNER
                                                                Container(
                                                                  width: 6,
                                                                  height: 41,
                                                                  decoration: BoxDecoration(
                                                                    color:
                                                                        Color.fromARGB(
                                                                          255,
                                                                          252,
                                                                          151,
                                                                          41,
                                                                        ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          5,
                                                                        ),
                                                                  ),
                                                                ),

                                                                // YAZILAR
                                                                Container(
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      // ÜST YAZI
                                                                      Row(
                                                                        children: [
                                                                          Container(
                                                                            padding: EdgeInsets.only(
                                                                              left: 10,
                                                                            ),
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            width:
                                                                                171,
                                                                            height:
                                                                                19,
                                                                            child: Text(
                                                                              "Lunch time",
                                                                              style: TextStyle(
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w700,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),

                                                                      // ALT YAZI
                                                                      Row(
                                                                        children: [
                                                                          Container(
                                                                            padding: EdgeInsets.only(
                                                                              left: 10,
                                                                            ),
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            width:
                                                                                171,
                                                                            height:
                                                                                19,
                                                                            child: Text(
                                                                              "09:00AM - 10:00AM",
                                                                              style: TextStyle(
                                                                                fontSize: 14,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),

                                                                      // ALTI YAZI
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
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

                                // BEŞİNCİ SATIR
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 17,
                                        child: Row(
                                          children: [
                                            // YAZI
                                            Container(
                                              width: 48,
                                              child: Text(
                                                "14:30",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),

                                            // GRİ ÇİZGİ
                                            Expanded(
                                              child: Container(
                                                height: 2,
                                                color: Color.fromARGB(
                                                  255,
                                                  217,
                                                  217,
                                                  217,
                                                ),
                                              ),
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
                                        height: 137,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  // KÜÇÜK KONTEYNER
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    width: 48,
                                                    height: 64,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        // BİRİNCİ YAZI
                                                        Container(
                                                          height: 17,
                                                          child: Text(
                                                            "15:00",
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ),

                                                        // İKİNCİ YUVARLAK
                                                        Container(
                                                          width: 10,
                                                          height: 10,
                                                          decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  100,
                                                                ),
                                                            color:
                                                                Color.fromARGB(
                                                                  255,
                                                                  62,
                                                                  194,
                                                                  184,
                                                                ),
                                                          ),
                                                        ),

                                                        // ÜÇÜNCÜ YAZI
                                                        Container(
                                                          height: 17,
                                                          child: Text(
                                                            "16:00",
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  // MAVİ UZUN ÇİZGİ
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                      left: 15,
                                                    ),
                                                    height: 64,
                                                    child: Divider(
                                                      height: 2,
                                                      color: Color.fromARGB(
                                                        255,
                                                        62,
                                                        194,
                                                        184,
                                                      ),
                                                    ),
                                                  ),

                                                  // BÜYÜK KONTEYNER
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 80,
                                                    ),
                                                    width: 335,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                      color: Color.fromARGB(
                                                        255,
                                                        218,
                                                        244,
                                                        255,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            height: 137,
                                                            child: Row(
                                                              children: [
                                                                // KÜÇÜK MAVİ KONTEYNER
                                                                Container(
                                                                  margin:
                                                                      EdgeInsets.only(
                                                                        left:
                                                                            20,
                                                                      ),
                                                                  width: 6,
                                                                  height: 97,
                                                                  decoration: BoxDecoration(
                                                                    color:
                                                                        Color.fromARGB(
                                                                          255,
                                                                          131,
                                                                          210,
                                                                          241,
                                                                        ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          5,
                                                                        ),
                                                                  ),
                                                                ),

                                                                // YAZILAR
                                                                Expanded(
                                                                  child: Container(
                                                                    margin: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          10,
                                                                    ),
                                                                    height: 97,
                                                                    child: Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        // YAZI 1
                                                                        Row(
                                                                          children: [
                                                                            Container(
                                                                              height: 19,
                                                                              child: Text(
                                                                                "Create color style",
                                                                                style: TextStyle(
                                                                                  fontSize: 16,
                                                                                  fontWeight: FontWeight.w700,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),

                                                                        // İKİNCİ YAZI
                                                                        Row(
                                                                          children: [
                                                                            Container(
                                                                              height: 60,
                                                                              child: Text(
                                                                                "Many desktop publishin图\nPoca0转 and web page oditors now\nuso",
                                                                                style: TextStyle(
                                                                                  fontSize: 14,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),

                                                                        // üçüncü yazı
                                                                        Row(
                                                                          children: [
                                                                            Container(
                                                                              height: 17,
                                                                              child: Text(
                                                                                "09:00AM - 10:00AM",
                                                                                style: TextStyle(
                                                                                  fontSize: 14,
                                                                                  fontWeight: FontWeight.w400,
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
                                                          ),
                                                        ),
                                                      ],
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

                                // YEDİNCİ SATIR
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 81,
                                        child: Row(
                                          children: [
                                            // SAAT YAZISI
                                            Container(
                                              width: 48,
                                              height: 17,
                                              child: Text(
                                                "17:00",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),

                                            // ÇİZGİ VE KONTEYNER
                                            Expanded(
                                              child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  // DÜZ ÇİZGİ
                                                  Container(
                                                    height: 2,
                                                    color: Color.fromARGB(
                                                      255,
                                                      217,
                                                      217,
                                                      217,
                                                    ),
                                                  ),

                                                  // KONTEYNER
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 30,
                                                    ),
                                                    padding: EdgeInsets.only(
                                                      left: 20,
                                                    ),
                                                    width: 227,
                                                    height: 81,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                        255,
                                                        234,
                                                        251,
                                                        232,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            child: Row(
                                                              children: [
                                                                // YEŞİL KONTEYNER
                                                                Container(
                                                                  width: 6,
                                                                  height: 41,
                                                                  decoration: BoxDecoration(
                                                                    color:
                                                                        Color.fromARGB(
                                                                          255,
                                                                          84,
                                                                          201,
                                                                          45,
                                                                        ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          5,
                                                                        ),
                                                                  ),
                                                                ),

                                                                // YAZILAR
                                                                Container(
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      // ÜST YAZI
                                                                      Row(
                                                                        children: [
                                                                          Container(
                                                                            padding: EdgeInsets.only(
                                                                              left: 10,
                                                                            ),
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            width:
                                                                                171,
                                                                            height:
                                                                                20,
                                                                            child: Text(
                                                                              "Team Meating",
                                                                              style: TextStyle(
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w700,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),

                                                                      // ALT YAZI
                                                                      Row(
                                                                        children: [
                                                                          Container(
                                                                            padding: EdgeInsets.only(
                                                                              left: 10,
                                                                            ),
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            width:
                                                                                171,
                                                                            height:
                                                                                19,
                                                                            child: Text(
                                                                              "09:00AM - 10:00AM",
                                                                              style: TextStyle(
                                                                                fontSize: 14,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),

                                                                      // ALTI YAZI
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
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
