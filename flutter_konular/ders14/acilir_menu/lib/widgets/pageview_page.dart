import 'package:flutter/material.dart';

class PageviewPage extends StatefulWidget {
  const PageviewPage({super.key});

  @override
  State<PageviewPage> createState() => _PageviewPageState();
}

class _PageviewPageState extends State<PageviewPage> {
  bool yatayEksen = true;
  bool kaydirmaAyari = true;
  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: pageController,
            scrollDirection: yatayEksen ? Axis.horizontal : Axis.vertical,
            // DOKUNARAK SAYFA DEĞİŞTİRME İŞLEMİ veya SÜRÜKLEYEREK SAYFA DEĞİŞTİRME İŞLEMİ ayarlama
            pageSnapping: kaydirmaAyari ? true : false,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: [
              Container(
                color: Colors.grey.shade600,
                child: Center(
                  child: Text(
                    "Sayfa 0",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blue.shade700,
                child: Center(
                  child: Text(
                    "Sayfa 1",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.red.shade700,
                child: Center(
                  child: Text(
                    "Sayfa 2",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            width: double.infinity,
            color: Colors.blueGrey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: currentIndex == 0
                          ? null
                          : () {
                              pageController.previousPage(
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeIn,
                              );
                            },
                      child: Column(
                        children: [Icon(Icons.arrow_back), Text("Geri")],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: currentIndex == 2
                          ? null
                          : () {
                              pageController.nextPage(
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeIn,
                              );
                            },
                      child: Column(
                        children: [Icon(Icons.arrow_forward), Text("İleri")],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Yatay eksende çalış",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Checkbox(
                      value: yatayEksen,
                      onChanged: (value) {
                        setState(() {
                          yatayEksen = value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Page Snapping aktif",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Checkbox(
                      value: kaydirmaAyari,
                      onChanged: (value) {
                        setState(() {
                          kaydirmaAyari = value!;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
