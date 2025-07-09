import 'package:flutter/material.dart';

class SifreGirisSayfa extends StatefulWidget {
  const SifreGirisSayfa({super.key});

  @override
  State<SifreGirisSayfa> createState() => _SifreGirisSayfaState();
}

class _SifreGirisSayfaState extends State<SifreGirisSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "Need help?",
              style: TextStyle(
                color: Color.fromARGB(255, 181, 86, 56),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // üst yazı
            Row(
              children: [
                Text(
                  "Verify Your Number",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),

            // boşluk
            SizedBox(height: 10),
            // alt yazı
            Row(
              children: [
                Text(
                  "Enter your PIN here to log in",
                  style: TextStyle(
                    color: Color.fromARGB(255, 148, 148, 148),
                    fontSize: 14,
                  ),
                ),
              ],
            ),

            // boşluk
            SizedBox(height: 40),

            // konteynerlar
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // konteyner
                        Container(
                          alignment: Alignment.center,
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 248, 248, 248),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 181, 86, 56),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),

                        // konteyner
                        Container(
                          alignment: Alignment.center,
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 248, 248, 248),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 181, 86, 56),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),

                        // konteyner
                        Container(
                          alignment: Alignment.center,
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 248, 248, 248),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 181, 86, 56),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),

                        // konteyner
                        Container(
                          alignment: Alignment.center,
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 248, 248, 248),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 181, 86, 56),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),

                        // konteyner
                        Container(
                          alignment: Alignment.center,
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 248, 248, 248),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 217, 217, 217),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // boşluk
            SizedBox(height: 20),
            // yazı
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  child: Text(
                    "Try another way",
                    style: TextStyle(
                      color: Color.fromARGB(255, 181, 86, 56),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("/YemekSayfa");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
