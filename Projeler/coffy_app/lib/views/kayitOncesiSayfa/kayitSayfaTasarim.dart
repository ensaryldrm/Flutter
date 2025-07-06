import 'package:flutter/material.dart';

class KayitOncesiTasarim extends StatefulWidget {
  const KayitOncesiTasarim({super.key});

  @override
  State<KayitOncesiTasarim> createState() => _KayitOncesiTasarimState();
}

class _KayitOncesiTasarimState extends State<KayitOncesiTasarim> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        children: [
          // EKRANIN EN YUKARISI İÇİN ROW
          Row(
            children: [
              // ROWUN İÇİNİ KAPLAYACAK CONTAINER VERDİK
              Expanded(
                child: Container(
                  // DESIGN İÇİN KONTEYNER İÇİNE ROW VERDİK
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            // BEYAZ KONTEYNER İÇİ TR YAZI
                            SizedBox(child: Text("TR")),

                            // BEYAZ KONTEYNER İÇİ AŞAĞIYA BAKAN OK
                            SizedBox(
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey.shade600,
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

          // BÜYÜK FOTOĞRAF İÇİN ROW
          Row(
            // CONTEINER ALDIK EXPANDEDLI
            children: [
              Expanded(
                child: Container(
                  // RESİM İÇİN CONTEINER VERDİM
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("resimler/buyuk_foto.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // ARADAKİ BOŞLUK İÇİN SIZEDBOX
          SizedBox(height: 65),

          // ORTA EKRAN YAZILAR
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      // İLK YAZI
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Kaliteli Kahve Uygun",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      // ORTANCA YAZI
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Fiyata",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      // ALT YAZI
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Üstelik 5 kahve siparişine 1 kahve hediye!",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // ARADAKİ BOŞLUK İÇİN SIZEDBOX
          SizedBox(height: 10),
          // EKRAN ALT BEYAZ KONTEYNER
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        // ÜSTTEN MESAFE İÇİN SIZEDBOX
                        SizedBox(height: 20),
                        // İLK YAZI
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Merhaba!",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        //İKİNCİ YAZI
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Siparişini nasıl alırsın?",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        // YAZIYLA BUTTON ARASI İÇİN MESAFE
                        SizedBox(height: 20),

                        // İLK BUTTON
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // İKON
                                        Container(
                                          child: Icon(
                                            Icons.shopping_bag_outlined,
                                            color: Colors.white,
                                          ),
                                        ),

                                        // ARADAKİ BOŞLUK İÇİN SIZEDBOX
                                        SizedBox(width: 10),
                                        // YAZI
                                        Container(
                                          child: Text(
                                            "Şubeden Al",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade200,
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
                          ),
                        ),

                        // BUTTONLAR ARASI MESAFE
                        SizedBox(height: 15),

                        // İKİNCİ BUTTON
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // İKON
                                        Container(
                                          child: Icon(
                                            Icons.qr_code,
                                            color: Colors.white,
                                          ),
                                        ),

                                        // ARADAKİ BOŞLUK İÇİN SIZEDBOX
                                        SizedBox(width: 10),
                                        // YAZI
                                        Container(
                                          child: Text(
                                            "QR ile Öde",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade200,
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
                          ),
                        ),

                        // BUTTONLAR ARASI MESAFE
                        SizedBox(height: 15),

                        // YAZI BUTTON
                        TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(15),
                                ),
                              ),
                              builder: (BuildContext context) {
                                return Container(
                                  height: 385,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 20,
                                      right: 20,
                                    ),
                                    child: Column(
                                      children: [
                                        // SÜRÜKLEME ÇİZGİSİ
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 4,
                                              width: 30,
                                              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20)),
                                            ),
                                          ],
                                        ),
                                       
                                        // ARADAKİ MESAFE İÇİN SIZEDBOX
                                        SizedBox(height: 25,),
                                        
                                        // HOŞGELDİN YAZISI
                                        Row(
                                          children: [
                                            Text(
                                              "Hoş Geldin",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),

                                        // ARADAKİ MESAFE İÇİN SIZEDBOX
                                        SizedBox(height: 15,),
                                        
                                        // UZUN ÜST YAZI
                                        Row(
                                          children: [
                                            Text(
                                              "Enfez lezzete ulaşmana çok az kaldı, giriş yap ve",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),

                                        // UZUN ALT YAZI
                                        Row(
                                          children: [
                                            Text(
                                              "hemen siparişini ver!",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),

                                        // ARADAKİ MESAFE İÇİN SIZEDBOX
                                        SizedBox(height: 25,),
                                        
                                        // ÜYE OL BUTTON
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 48,
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                        elevation: 0,
                                                        backgroundColor:
                                                            Color.fromARGB(
                                                              255,
                                                              118,
                                                              191,
                                                              180,
                                                            ),
                                                      ),
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Üye Ol",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),

                                        // ARADAKİ MESAFE İÇİN SIZEDBOX
                                        SizedBox(height: 10,),
                                        
                                        // --VEYA-- KISMI
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Divider(
                                                        color: Colors
                                                            .grey
                                                            .shade400,
                                                        thickness: 0.5,
                                                      ),
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 80,
                                                      child: Text(
                                                        "VEYA",
                                                        style: TextStyle(
                                                          color: Colors
                                                              .grey
                                                              .shade500,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Divider(
                                                        color: Colors
                                                            .grey
                                                            .shade400,
                                                        thickness: 0.5,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),

                                        // ARADAKİ MESAFE İÇİN SIZEDBOX
                                        SizedBox(height: 10,),
                                        
                                        // GİRİŞ YAP BUTTON
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 48,
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                        elevation: 0,
                                                        side: BorderSide(color: Colors.grey.shade400, width: 0.8),
                                                        backgroundColor:
                                                            Colors.white
                                                      ),
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Giriş Yap",
                                                    style: TextStyle(
                                                      color: Colors.grey.shade600,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 17,
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
                                );
                              },
                            );
                          },
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: [
                                      // YAZI
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              child: Column(
                                                children: [
                                                  // YAZI
                                                  Container(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    width: 163,
                                                    child: Text(
                                                      "Üye Girişi Yap veya Üye Ol",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  // ALT ÇİZGİ
                                                  Container(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    width: 163,
                                                    height: 10,
                                                    child: Container(
                                                      height: 1.5,
                                                      color: Colors.black,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
