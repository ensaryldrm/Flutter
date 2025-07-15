import 'package:coffy_app/modals/urun.dart';
import 'package:coffy_app/widgets/urun_card.dart';
import 'package:flutter/material.dart';

class YatayEnCokSatanlarList extends StatefulWidget {
  final List<Urun> enCokSatanlar;
  const YatayEnCokSatanlarList({required this.enCokSatanlar, super.key});

  @override
  State<YatayEnCokSatanlarList> createState() => _YatayEnCokSatanlarListState();
}

class _YatayEnCokSatanlarListState extends State<YatayEnCokSatanlarList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 5,
        crossAxisCount: 1,
        childAspectRatio: 1,
      ),
      itemCount: widget.enCokSatanlar.length,
      itemBuilder: (context, index) {
        return UrunCard(urun: widget.enCokSatanlar[index]);
      },
    );
  }
}
