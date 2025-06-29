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
          top: 100,
        ),
        child: Column(
          children: [
            Container(
              height: 729,
              color: Colors.black,
              child: Column(
                children: [
                  // birinci row
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.red,
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
                                        color: Colors.blue,
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
                                        color: Colors.blue,
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
                            color: Colors.amber,
                            child: Column(
                              children: [
                                // BİRİNCİ SATIR
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 81,
                                        color: Colors.yellow,
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
                                                alignment: Alignment.center,
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
                                                                Container(
                                                                  child: Column(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    children: [
                                                                      // ÜST YAZI
                                                                      Row(
                                                                        children: [
                                                                          Container(
                                                                            alignment: Alignment.center,
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
                                                                            alignment: Alignment.center,
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
