import 'package:coffy_app/views/anaSayfa/pages/bildirim_sayfa.dart';
import 'package:coffy_app/views/anaSayfa/pages/cekirdek_sayfa.dart';
import 'package:coffy_app/views/anaSayfa/pages/qr_sayfa.dart';
import 'package:coffy_app/views/aramaSayfa/arama_sayfa_main.dart';
import 'package:coffy_app/views/hesab%C4%B1mSayfa/hesap_sayfa_main.dart';
import 'package:coffy_app/views/kampanyalarSayfa/kampanya_sayfa_main.dart';
import 'package:coffy_app/views/sepetimSayfa/sepetim_sayfa_main.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int secilmisIndex = 0;
  List<Widget> sayfalarList = [
    anaSayfaMain(),
    AramaSayfaMain(),
    SepetimSayfaMain(),
    KampanyaSayfaMain(),
    HesapSayfaMain(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 236, 240),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            secilmisIndex = index;
          });
        },
        currentIndex: secilmisIndex,
        selectedItemColor: Color.fromARGB(255, 116, 194, 181),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          color: Color.fromARGB(255, 116, 194, 181),
          fontSize: 10,
        ),
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 10),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "AnaSayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Arama"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Sepetim",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Kampanyalar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Hesabım",
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => BildirimSayfa()));
          },
          icon: Icon(
            Icons.notifications_none_outlined,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 40),
            Container(
              height: 80,
              child: Image.asset(
                "resimler/coffy_logo.png",
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => QrSayfa()));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              width: 80,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.qr_code, size: 30)],
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text("QR", style: TextStyle(fontSize: 11)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Text(
                                  "ile Öde",
                                  style: TextStyle(fontSize: 11),
                                ),
                              ),
                            ),
                          ],
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
      body: sayfalarList[secilmisIndex],
    );
  }
}

class anaSayfaMain extends StatefulWidget {
  const anaSayfaMain({super.key});

  @override
  State<anaSayfaMain> createState() => _anaSayfaMainState();
}

class _anaSayfaMainState extends State<anaSayfaMain> {
  PageController controller = PageController();

  List<String> resimler = ["resimler/reklam1.png", "resimler/reklam2.png"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 40,
                color: Color.fromARGB(255, 116, 194, 181),
                child: Row(
                  children: [
                    Icon(Icons.shopping_bag_outlined, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      "Ümraniye Madenler",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 215,
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: controller,
                      itemCount: resimler.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          resimler[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        );
                      },
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Center(
                        child: Container(
                          alignment: Alignment.center,
                          width: 35,
                          height: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: resimler.length,
                            effect: WormEffect(
                              dotHeight: 10,
                              dotWidth: 10,
                              activeDotColor: Color.fromARGB(
                                255,
                                116,
                                194,
                                181,
                              ),
                              dotColor: Colors.grey,
                            ),
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
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CekirdekSayfa()),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 10),
                                  Text(
                                    "5 Çekirdeğe 1 Kahve Hediye!",
                                    style: TextStyle(
                                      color: Colors.grey.shade200,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Detaylar",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade200,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      "3/",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Expanded(
                                      child: Container(
                                        height: 16,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade400,
                                          borderRadius: BorderRadius.circular(
                                            100,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 6,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                    255,
                                                    116,
                                                    194,
                                                    181,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        100,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 4,
                                              child: Container(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    SizedBox(
                                      width: 25,
                                      height: 25,
                                      child: CircleAvatar(
                                        backgroundColor: Color.fromARGB(
                                          255,
                                          116,
                                          194,
                                          181,
                                        ),
                                        child: Text(
                                          "0",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Bedava\nİçecek",
                                      style: TextStyle(fontSize: 11),
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
            ),
          ],
        ),
      ],
    );
  }
}
