import 'package:flutter/material.dart';

class YemekSayfa extends StatefulWidget {
  const YemekSayfa({super.key});

  @override
  State<YemekSayfa> createState() => _YemekSayfaState();
}

class _YemekSayfaState extends State<YemekSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          children: [
            // app  bar
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Location")),
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.location_on),
                                  Text(
                                    "New York,",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "USA",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: 13,
                                    height: 7,
                                    child: Image.asset(
                                      "resimler/asagiya_bakan_ok.png",
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              child: CircleAvatar(
                                backgroundColor: Color.fromARGB(
                                  255,
                                  248,
                                  248,
                                  248,
                                ),
                                child: Icon(
                                  Icons.notifications_sharp,
                                  color: Colors.black,
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

            // search bar
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 248, 248),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          child: Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 142, 142, 142),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          child: Text(
                            "Search your favourite pizza",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 134, 134, 134),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(child: Icon(Icons.settings)),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),
            // büyük card
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 152,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 248, 248),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            top: 10,
                            bottom: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Special Offer",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),
                              Container(
                                child: Text(
                                  "Discount 20% off",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 134, 134, 134),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "applied at checkout",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 134, 134, 134),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: 94,
                                height: 25,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(
                                      255,
                                      221,
                                      113,
                                      78,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Order",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                width: 180,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "resimler/main_pizza.png",
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
          ],
        ),
      ),
    );
  }
}
