import 'package:flutter/material.dart';
import 'package:pizza_uygulama/views/appBarWidget.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  List<String> dilList = ["English", "Turkish"];
  late String secilenDil;

  // RENK DEĞİŞİMİ
  bool renkDegistiMi = false;

  // öbür sayfalar için değerler
  late String dil;
  late List<String> secilenList;
  @override
  void initState() {
    super.initState();
    secilenDil = dilList[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarWidget(secilenDil: secilenDil, dilList: dilList),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.only(top: 75, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Büyük Pizza Fotoğraf
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 308,
                      height: 187,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("resimler/ana_pizza_resim.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // ARA BOŞLUK İÇİN SIZEDBOX
              SizedBox(height: 20),

              // WELCOME YAZISI
              Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Welcome to Ovenly",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // ARA BOŞLUK İÇİN SIZEDBOX
              SizedBox(height: 15),

              // uzun yazı
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          // üst yazı
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Your favorite pizzas, freshly baked and delivered",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 134, 134, 134),
                                ),
                              ),
                            ],
                          ),

                          // alt yazı
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "to your doorstep with love and care!",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 134, 134, 134),
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

              // ARA BOŞLUK İÇİN SIZEDBOX
              SizedBox(height: 15),
              // 4 lü yuvarlak
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 56,
                    height: 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // birinci yuvarlak
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 181, 86, 56),
                          ),
                        ),

                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 217, 217, 217),
                          ),
                        ),

                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 217, 217, 217),
                          ),
                        ),

                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 217, 217, 217),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // ARA BOŞLUK İÇİN SIZEDBOX
              SizedBox(height: 91),

              // KAHVERENGİ DÜĞME
              SizedBox(
                width: 335,
                height: 44,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: renkDegistiMi
                        ? Color.fromARGB(255, 248, 248, 248)
                        : Color.fromARGB(255, 181, 86, 56),
                  ),
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: renkDegistiMi
                          ? Color.fromARGB(255, 181, 86, 56)
                          : Color.fromARGB(255, 248, 248, 248),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      renkDegistiMi = !renkDegistiMi;
                    });
                    Future.delayed(Duration(milliseconds: 50), () {
                      Navigator.of(context).pushNamed(
                        "/UyeGirisSayfa",
                        arguments: [secilenDil, dilList],
                      );
                    });
                    debugPrint("çalışıyor");
                  },
                ),
              ),

              // ARA BOŞLUK İÇİN SIZEDBOX
              SizedBox(height: 15),

              // BEYAZ DÜĞME
              SizedBox(
                width: 335,
                height: 44,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: renkDegistiMi
                        ? Color.fromARGB(255, 181, 86, 56)
                        : Color.fromARGB(255, 248, 248, 248),
                  ),
                  child: Text(
                    "Sign me up",
                    style: TextStyle(
                      color: renkDegistiMi
                          ? Color.fromARGB(255, 248, 248, 248)
                          : Color.fromARGB(255, 181, 86, 56),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      renkDegistiMi = !renkDegistiMi;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
