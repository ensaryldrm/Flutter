import 'package:coffy_app/modals/urun.dart';
import 'package:coffy_app/widgets/urun_card.dart';
import 'package:flutter/material.dart';

class EnCokSatanlarList extends StatefulWidget {
  final List<Urun> enCokSatanlar;
  const EnCokSatanlarList({required this.enCokSatanlar, super.key});

  @override
  State<EnCokSatanlarList> createState() => _EnCokSatanlarListState();
}

class _EnCokSatanlarListState extends State<EnCokSatanlarList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 5,
        crossAxisCount: 2,
        childAspectRatio: 1.12
      ),
      itemCount: widget.enCokSatanlar.length,
      itemBuilder: (context, index) {
        return UrunCard(urun: widget.enCokSatanlar[index]);
      },
    );
  }
}
