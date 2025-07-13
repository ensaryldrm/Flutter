import 'package:coffy_app/modals/urun.dart';
import 'package:flutter/material.dart';

class UrunCard extends StatelessWidget {
  final Urun urun;

  const UrunCard({super.key, required this.urun});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.network(
                urun.resimUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(urun.ad, style:TextStyle(fontWeight: FontWeight.bold)),
                Text("${urun.fiyat.toString()} TL"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}