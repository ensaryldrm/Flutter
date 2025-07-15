import 'package:coffy_app/modals/urun.dart';
import 'package:flutter/material.dart';

class UrunCard extends StatelessWidget {
  final Urun urun;

  const UrunCard({super.key, required this.urun});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(urun.resimUrl),
                                    fit: BoxFit.contain,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
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
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 15),
                Container(
                  width: 80,
                  child: Text(
                    urun.ad,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ),
                Spacer(),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
                SizedBox(width: 10,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 15),
                Text(
                  "${urun.fiyat.toStringAsFixed(0)} TL",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
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
