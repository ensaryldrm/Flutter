import 'package:flutter/material.dart';
import 'package:grid_view_araba/modals/shop.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  Shop urun1 = Shop(
    imgUrl: "images/siyah_araba.png",
    urunAd: "Maserati GranTurismo",
    urunFiyat: 1,
    urunTicket: 100000,
    kalanGun: 1,
    yuzdelik: 0.96,
  );
  Shop urun2 = Shop(
    imgUrl: "images/motor.png",
    urunAd: "Aprilia Tuareg 660",
    urunFiyat: 1,
    urunTicket: 1000,
    kalanGun: 2,
    yuzdelik: 0.84,
  );
  Shop urun3 = Shop(
    imgUrl: "images/saat.png",
    urunAd: "Apple Watch Ultra",
    urunFiyat: 1,
    urunTicket: 500,
    kalanGun: 2,
    yuzdelik: 0.80,
  );
  Shop urun4 = Shop(
    imgUrl: "images/gri_araba.png",
    urunAd: "Maserati Ghibli",
    urunFiyat: 4,
    urunTicket: 50000,
    kalanGun: 12,
    yuzdelik: 0.46,
  );
  Shop urun5 = Shop(
    imgUrl: "images/kamera.png",
    urunAd: "GoPro Hero 11 Black",
    urunFiyat: 1,
    urunTicket: 500,
    kalanGun: 26,
    yuzdelik: 0.20,
  );
  Shop urun6 = Shop(
    imgUrl: "images/kirmizi_motorum.jpg",
    urunAd: "Aprilia RSV4",
    urunFiyat: 2,
    urunTicket: 5000,
    kalanGun: 29,
    yuzdelik: 0.20,
  );

  @override
  Widget build(BuildContext context) {
    List<Shop> urunler = [urun1, urun2, urun3, urun4, urun5, urun6];
    List<double> yuzdelikler = [
      170 * urun1.yuzdelik,
      170 * urun2.yuzdelik,
      170 * urun3.yuzdelik,
      170 * urun4.yuzdelik,
      170 * urun5.yuzdelik,
      170 * urun6.yuzdelik,
    ];

    return Scaffold(
      body: GridView.builder(
        itemCount: urunler.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.67,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  // İLK SATIR
                  Container(
                    height: 230,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(9),
                        topRight: Radius.circular(9),
                      ),
                    ),

                    child: Row(
                      children: [
                        Column(
                          children: [
                            // ÜRÜN RESİM
                            Container(
                              child: Container(
                                height: 100,
                                width: 193,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(urunler[index].imgUrl),
                                  ),
                                ),
                              ),
                            ),

                            // ÜRÜN İSİM
                            Container(
                              width: 193,
                              alignment: Alignment.center,
                              child: Text(
                                urunler[index].urunAd,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),

                            // ÜRÜN FİYATININ BEYAZ KONTEYNERİ
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${urunler[index].urunFiyat.toString()} €",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // ÜRÜN YÜZDELİK BAR
                            Flexible(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 13,
                                    ),
                                    child: Container(
                                      height: 30,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: yuzdelikler[index],
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                            ),
                                            child: Text(
                                              "%${(urunler[index].yuzdelik * 100).toInt()}",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
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
                      ],
                    ),
                  ),

                  // İKİNCİ SATIR
                  Row(
                    children: [
                      Column(
                        // REMAINING TIME
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                alignment: Alignment.center,
                                width: 120,
                                height: 30,

                                child: Text(
                                  "Remaining Time",
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(right: 10),
                                alignment: Alignment.centerRight,
                                width: 73,
                                height: 30,
                                child: Text(
                                  "${urunler[index].kalanGun} Days",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                alignment: Alignment.centerLeft,
                                width: 120,
                                height: 30,

                                child: Text(
                                  "Total Ticket",
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(right: 10),
                                alignment: Alignment.centerRight,
                                width: 73,
                                height: 30,
                                child: Text(
                                  "${urunler[index].urunTicket}",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // DÜĞME
                          Container(
                            width: 180,
                            height: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: urunler[index].dugmeyeBasildiMi
                                    ? Colors.red
                                    : const Color.fromARGB(255, 6, 168, 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  urunler[index].dugmeyeBasildiMi =
                                      !urunler[index].dugmeyeBasildiMi;
                                });
                              },
                              child: urunler[index].dugmeyeBasildiMi
                                  ? Text(
                                      "Satın Alındı",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  : Text(
                                      "Buy Ticket",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
