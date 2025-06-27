import 'dart:math';

import 'package:flutter/material.dart';
import 'package:future_builder/detay_sayfa.dart';
import 'package:future_builder/modals/yemek.dart';

class FutureBuilderOzelListeleme extends StatefulWidget {
  const FutureBuilderOzelListeleme({super.key});

  @override
  State<FutureBuilderOzelListeleme> createState() =>
      _FutureBuilderOzelListelemeState();
}

class _FutureBuilderOzelListelemeState
    extends State<FutureBuilderOzelListeleme> {
  Future<List<Yemek>> yemekleriGetir() async {
    List<Yemek> yemekList = <Yemek>[];
    Yemek y1 = Yemek(
      yemekAdi: "İskender",
      yemekFiyat: 275,
      yemekId: Random().nextInt(99999999),
      yemekResimAdi: "resimler/iskender.png",
    );
    yemekList.add(y1);

    Yemek y2 = Yemek(
      yemekAdi: "Karışık Kebap",
      yemekFiyat: 475,
      yemekId: Random().nextInt(99999999),
      yemekResimAdi: "resimler/karisik_kebap.png",
    );
    yemekList.add(y2);

    Yemek y3 = Yemek(
      yemekAdi: "Karışık Pide",
      yemekFiyat: 525,
      yemekId: Random().nextInt(99999999),
      yemekResimAdi: "resimler/karisik_pide.png",
    );
    yemekList.add(y3);

    Yemek y4 = Yemek(
      yemekAdi: "Köfte Izgara",
      yemekFiyat: 350,
      yemekId: Random().nextInt(99999999),
      yemekResimAdi: "resimler/kofte_izgara.png",
    );
    yemekList.add(y4);

    Yemek y5 = Yemek(
      yemekAdi: "Kokoreç",
      yemekFiyat: 300,
      yemekId: Random().nextInt(99999999),
      yemekResimAdi: "resimler/kokorec.png",
    );
    yemekList.add(y5);

    Yemek y6 = Yemek(
      yemekAdi: "Kuzu Şiş",
      yemekFiyat: 275,
      yemekId: Random().nextInt(99999999),
      yemekResimAdi: "resimler/kuzu_sis.png",
    );
    yemekList.add(y6);

    return yemekList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yemek Uygulaması - Future Builder"),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: yemekleriGetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Yemek> yemekler = snapshot.data!;
            return ListView.builder(
              itemCount: yemekler.length,
              itemBuilder: (context, index) {
                Yemek yemek = yemekler[index];

                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetaySayfa(yemek: yemek),
                      ),
                    );
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(yemek.yemekResimAdi),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  yemek.yemekAdi,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  yemek.yemekFiyat.toString(),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.keyboard_double_arrow_right),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center();
          }
        },
      ),
    );
  }
}
