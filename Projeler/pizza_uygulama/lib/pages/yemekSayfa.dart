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
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    color: Colors.red,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Location",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 134, 134, 134),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Row(children: [Icon(Icons.location_on)]),
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
