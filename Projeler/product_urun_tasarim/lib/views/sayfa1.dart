import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:product_urun_tasarim/models/ImportantModel.dart';
import 'package:product_urun_tasarim/models/OrderUpdatesModel.dart';

class Sayfa1 extends StatefulWidget {
  const Sayfa1({super.key});

  @override
  State<Sayfa1> createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1> {
  late Future<List<ImportantModel>> important;
  late Future<List<OrderUpdatesModel>> orderUpdate;

  @override
  void initState() {
    super.initState();
    important = importantJsonOku();
    orderUpdate = orderUpdateJsonOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, size: 30),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Text(
                    "Activity",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.only(right: 20),

              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.document_scanner, size: 24),
                              SizedBox(height: 10),
                              Text("Ordered", style: TextStyle(fontSize: 13)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.directions_boat, size: 24),
                              SizedBox(height: 10),

                              Text("Shipped", style: TextStyle(fontSize: 13)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.fire_truck, size: 24),
                              SizedBox(height: 10),

                              Text("Arriving", style: TextStyle(fontSize: 13)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.home_outlined, size: 24),
                              SizedBox(height: 10),

                              Text("Delivered", style: TextStyle(fontSize: 13)),
                            ],
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Color.fromARGB(255, 76, 105, 255),
                          textStyle: TextStyle(fontSize: 18),
                          backgroundColor: Colors.white,
                          side: BorderSide(
                            color: Color.fromARGB(255, 76, 105, 255),
                          ),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Text("View My Orders"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: Color.fromARGB(255, 229, 229, 229),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),

                  child: Row(
                    children: [
                      Text(
                        "Important",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Clear",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 255, 76, 150),
                        ),
                      ),
                    ],
                  ),
                ),

                FutureBuilder(
                  future: important,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<ImportantModel> important = snapshot.data!;
                      return Container(
                        height: 200,
                        child: ListView.builder(
                          itemCount: important.length,
                          itemBuilder: (context, index) {
                            ImportantModel gelenVeri = important[index];
                            return ListTile(
                              leading: Container(
                                width: 24,
                                height: 24,
                                child: Image.asset("${gelenVeri.anaResim}"),
                              ),
                              title: Text(
                                "${gelenVeri.ustBaslik}",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                "${gelenVeri.altBaslik}",
                                style: TextStyle(fontSize: 13),
                              ),
                            );
                          },
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Color.fromARGB(255, 229, 229, 229),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(right: 20),

                  child: Row(
                    children: [
                      Text(
                        "Order Updates",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),

                FutureBuilder(
                  future: orderUpdate,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<OrderUpdatesModel> orderUpdate = snapshot.data!;
                      return Container(
                        height: 200,
                        child: ListView.builder(
                          itemCount: orderUpdate.length,
                          itemBuilder: (context, index) {
                            OrderUpdatesModel gelenVeri = orderUpdate[index];
                            return ListTile(
                              leading: Container(
                                width: 40,
                                height: 40,
                                child: Image.asset("${gelenVeri.anaResim}"),
                              ),
                              title: Text(
                                "${gelenVeri.ustBaslik}",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                "${gelenVeri.altBaslik}",
                                style: TextStyle(fontSize: 13),
                              ),
                              trailing: Container(
                                width: 40,
                                height: 42,
                                child: Image.asset("${gelenVeri.sonResim}"),
                              ),
                            );
                          },
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<List<ImportantModel>> importantJsonOku() async {
    try {
      // Bir json bize daime string veri döndürür
      String okunanString = await DefaultAssetBundle.of(
        context,
      ).loadString("data/important.json");

      //String .json formatına dönüştürmemiz gerekiyor.
      var jsonObject = jsonDecode(okunanString);
      List<ImportantModel> tumImportants = (jsonObject as List).map((gelenMap) {
        return ImportantModel.fromJson(gelenMap);
      }).toList();

      return tumImportants;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<List<OrderUpdatesModel>> orderUpdateJsonOku() async {
    try {
      // Bir json bize daime string veri döndürür
      String okunanString = await DefaultAssetBundle.of(
        context,
      ).loadString("data/order_updates.json");

      //String .json formatına dönüştürmemiz gerekiyor.
      var jsonObject = jsonDecode(okunanString);
      List<OrderUpdatesModel> tumOrderUpdates = (jsonObject as List).map((
        gelenMap,
      ) {
        return OrderUpdatesModel.fromJson(gelenMap);
      }).toList();

      return tumOrderUpdates;
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
