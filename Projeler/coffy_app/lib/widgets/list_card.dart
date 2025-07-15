import 'package:coffy_app/modals/urun.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final Urun urun;
  const ListCard({required this.urun, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        height: 120,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(urun.resimUrl),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 5,
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          urun.ad,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Güzel içerik", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          "${urun.fiyat.toStringAsFixed(0)} TL",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
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
                          child: Icon(Icons.add, color: Colors.white, size: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
