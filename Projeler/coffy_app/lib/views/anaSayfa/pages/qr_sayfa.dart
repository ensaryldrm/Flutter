import 'package:flutter/material.dart';

class QrSayfa extends StatefulWidget {
  const QrSayfa({super.key});

  @override
  State<QrSayfa> createState() => _QrSayfaState();
}

class _QrSayfaState extends State<QrSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 236, 240),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          "QR ile Öde",
          style: TextStyle(fontSize: 18, color: Colors.grey.shade300),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 30),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              color: Color.fromARGB(255, 235, 236, 240),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Kasada QR ile öde, sana özel",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "fırsatlardan yararlan.",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 270,
                        child: Icon(Icons.qr_code_2, size: 300),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "5 6 9 6 6 1",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),

                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),

                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),

                            Container(
                              child: Text(
                                "60",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.qr_code),
                            SizedBox(width: 5),
                            Text("Yeni QR Üret"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cüzdan Bakiyesi",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "0.00 TL",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 40,
                        color: Colors.grey.shade300,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.local_drink,
                                color: Colors.grey.shade700,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "0",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Bedava"),
                              Text("İçecek")
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.wallet_outlined),
                            label: Text("Para Yükle"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal.shade200,
                              foregroundColor: Colors.white,
                              elevation: 0,
                              shape: StadiumBorder(),
                              padding: EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 16,
                              ),
                            ),
                          ),
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
    );
  }
}
