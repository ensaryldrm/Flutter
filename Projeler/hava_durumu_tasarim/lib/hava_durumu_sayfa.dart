import 'package:flutter/material.dart';

class HavaDurumuSayfa extends StatefulWidget {
  const HavaDurumuSayfa({super.key});

  @override
  State<HavaDurumuSayfa> createState() => _HavaDurumuSayfaState();
}

class _HavaDurumuSayfaState extends State<HavaDurumuSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 155, 233),
      body: HavaDurumuSayfaTasarim(),
    );
  }
}

class HavaDurumuSayfaTasarim extends StatefulWidget {
  const HavaDurumuSayfaTasarim({super.key});

  @override
  State<HavaDurumuSayfaTasarim> createState() => _HavaDurumuSayfaTasarimState();
}

class _HavaDurumuSayfaTasarimState extends State<HavaDurumuSayfaTasarim> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 75),
        child: Column(
          children: [
            Row(
              // KONUM İŞARETİ
              children: [
                Container(
                  margin: EdgeInsets.only(left: 45),
                  height: 40,
                  width: 40,
                  child: Image.asset("images/konum.png", color: Colors.white),
                ),

                // KONUM SAĞINDAKİ YAZI
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10),
                  height: 40,
                  width: 100,
                  child: Text(
                    "Fortaleza",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                // AŞAĞIYA BAKAN OK
                SizedBox(
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      width: 100,
                      height: 100,
                      "images/alt_ok.png",
                      color: Colors.white,
                    ),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
