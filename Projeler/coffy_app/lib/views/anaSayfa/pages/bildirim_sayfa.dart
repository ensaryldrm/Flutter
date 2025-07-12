import 'package:flutter/material.dart';

class BildirimSayfa extends StatelessWidget {
  const BildirimSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 236, 240),
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>Navigator.pop(context),icon: Icon(Icons.arrow_back), color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          "Bildirimlerim",
          style: TextStyle(color: Colors.grey.shade200, fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 116, 194, 181),
                          Colors.white,
                        ],
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 7),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.notifications_none,
                            color: Color.fromARGB(255, 116, 194, 181),
                          ),
                        ),
                        SizedBox(width: 7),
                        Container(
                          child: Text(
                            "Bildirimleri açarak kampanyalardan\nhaberdar olabilirsin!",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 116, 194, 181),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Text(
                            "Bildirimleri Aç",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
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
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              CircleAvatar(
                                child: Icon(Icons.no_drinks),
                                backgroundColor: Color.fromARGB(
                                  255,
                                  116,
                                  194,
                                  181,
                                ),
                                foregroundColor: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          flex: 7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Fikirlerin bizim için önemli!",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 160,
                                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10)),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [Text("Fikirlerinle gelişmemize yardımcı olduğun\niçin teşekkür ederiz", style: TextStyle(fontSize: 14, color: Colors.grey.shade800),)],
                              )
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
    );
  }
}
