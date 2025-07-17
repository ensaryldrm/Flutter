import 'package:flutter/material.dart';

class CekirdekSayfa extends StatefulWidget {
  const CekirdekSayfa({super.key});

  @override
  State<CekirdekSayfa> createState() => _CekirdekSayfaState();
}

class _CekirdekSayfaState extends State<CekirdekSayfa> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 236, 240),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Çekirdeklerim",
          style: TextStyle(fontSize: 16, color: Colors.grey.shade200),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // çekirdek container
            Row(
              children: [
                Expanded(
                  child: Container(
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
              ],
            ),
            SizedBox(height: 20),

            // yazı kont
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 116, 194, 181),
                            child: Icon(Icons.timelapse, color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Çekirdek Hareketleri",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // expansion tile
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 340,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Kampanya Bilgileri",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ExpansionTile(
                                expansionAnimationStyle: AnimationStyle(
                                  curve: Curves.bounceInOut,
                                  duration: Duration(milliseconds: 300),
                                ),
                                tilePadding: EdgeInsets.only(),
                                title: Text(
                                  "Nasıl çekirdek kazanırım?",
                                  style: TextStyle(fontSize: 14),
                                ),
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Uygulamadan vereceğin içecek siparişlerinde ürünlerin\ndetayında belirtilen çekirdek adedi hesabına tanımlanır.",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ExpansionTile(
                                expansionAnimationStyle: AnimationStyle(
                                  curve: Curves.bounceInOut,
                                  duration: Duration(milliseconds: 300),
                                ),
                                tilePadding: EdgeInsets.only(),
                                title: Text(
                                  "Çekirdeklerim hangi ürünlerde geçerli?",
                                  style: TextStyle(fontSize: 14),
                                ),
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Çekirdeklerini biriktirerek kazandığın bedava içecekleri\nseçili standart ve orta boy içeceklerde kullanabilirsin.",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ExpansionTile(
                                expansionAnimationStyle: AnimationStyle(
                                  curve: Curves.bounceInOut,
                                  duration: Duration(milliseconds: 300),
                                ),
                                tilePadding: EdgeInsets.only(),
                                title: Text(
                                  "Çekirdeklerim tanımlanmadı. Ne yapabilirim?",
                                  style: TextStyle(fontSize: 14),
                                ),
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Çekirdekler siparişin tamamlanıp, teslim edildikten sonra\n4 saat içnide tamamlanmış olur.Eğer 4 saat içinde\ntamamlanmadıysa yardım sekmesindeki WhatsApp\nDestek hattından bize ulaşabilirsin.",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ExpansionTile(
                                expansionAnimationStyle: AnimationStyle(
                                  curve: Curves.bounceInOut,
                                  duration: Duration(milliseconds: 300),
                                ),
                                tilePadding: EdgeInsets.only(),
                                title: Text(
                                  "Bedava içeceğimi nasıl kullanırım?",
                                  style: TextStyle(fontSize: 14),
                                ),
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Ödeme adımında Kampanyalar alanından ilgili\nkampanyayı seçip ödemeni tamamlayabilirsin.",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
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
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ödeme adımında kampanya seçim alanından ilgili",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "kampanyayı seçip ödemeni tamamlayabilirsin.",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
