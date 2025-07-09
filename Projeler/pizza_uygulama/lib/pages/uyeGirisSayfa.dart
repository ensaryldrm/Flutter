import 'package:flutter/material.dart';
import 'package:pizza_uygulama/views/appBarWidget.dart';
import 'package:pizza_uygulama/views/logosuzAppBarWidget.dart';

class UyeGirisSayfa extends StatefulWidget {
  String secilenDil;
  final List<String> dilList;
  UyeGirisSayfa({required this.dilList, required this.secilenDil});

  @override
  State<UyeGirisSayfa> createState() => _UyeGirisSayfaState();
}

class _UyeGirisSayfaState extends State<UyeGirisSayfa> {
  TextEditingController metinKontrol = TextEditingController();
  bool yaziYazildiMi = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Logosuzappbarwidget(
          secilenDil: widget.secilenDil,
          dilList: widget.dilList,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 11),
        child: Column(
          children: [
            // üst yazı
            Row(
              children: [
                Text(
                  "Welcome to Ovenly",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            // alt yazı
            Row(
              children: [
                Text(
                  "We'll send you a verification code to get started",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 134, 134, 134),
                  ),
                ),
              ],
            ),

            // boşluk için sizedbox
            SizedBox(height: 30),

            // phone number yazısı
            Row(
              children: [
                Text(
                  "Phone number",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text("*", style: TextStyle(color: Colors.red, fontSize: 14)),
              ],
            ),

            // boşluk için sizedbox
            SizedBox(height: 15),

            // bayrak + textfield
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 30,
                    child: Row(
                      children: [
                        // bayraklı konteyner
                        Container(
                          height: 25,
                          width: 66,
                          color: Color.fromARGB(255, 248, 248, 248),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 18,
                                height: 13.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("resimler/singapur.png"),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "+65",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // aradaki boşluk için sizedbox
                        SizedBox(width: 10),

                        // textfield
                        Expanded(
                          child: Container(
                            child: TextField(
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                hint: Text(
                                  "9876XXXXXX",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              onChanged: (metin) {
                                setState(() {
                                  yaziYazildiMi = metin.isNotEmpty;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // aradaki boşluk için sizedbox
            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        disabledBackgroundColor: Color.fromARGB(
                          255,
                          248,
                          248,
                          248,
                        ),
                        disabledForegroundColor: Color.fromARGB(
                          255,
                          134,
                          134,
                          134,
                        ),
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),

                        backgroundColor: Color.fromARGB(255, 181, 86, 56),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: yaziYazildiMi
                          ? () {
                              Navigator.of(
                                context,
                              ).pushNamed("/SifreGirisSayfa");
                            }
                          : null,
                      child: Text("Continue"),
                    ),
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
