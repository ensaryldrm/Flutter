import 'package:coffy_app/data/urunler.dart';
import 'package:coffy_app/modals/urun.dart';
import 'package:coffy_app/widgets/list_card.dart';
import 'package:flutter/material.dart';

class AramaListview extends StatefulWidget {
  final List<Urun> enCokSatanlar;
  const AramaListview({required this.enCokSatanlar, super.key});

  @override
  State<AramaListview> createState() => _AramaListviewState();
}

class _AramaListviewState extends State<AramaListview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: enCokSatanlarList.length,
        itemBuilder: (context, index) {
          return ListCard(urun: widget.enCokSatanlar[index]);
        },
      ),
    );
  }
}
