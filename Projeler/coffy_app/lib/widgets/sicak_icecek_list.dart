import 'package:coffy_app/modals/urun.dart';
import 'package:coffy_app/views/detaySayfalar/icecekler_detay_sayfa.dart';
import 'package:coffy_app/widgets/urun_card.dart';
import 'package:flutter/material.dart';

class SicakIcecekList extends StatefulWidget {
  final List<Urun> icecekList;
  SicakIcecekList({required this.icecekList, super.key});

  @override
  State<SicakIcecekList> createState() => _SicakIcecekListState();
}

class _SicakIcecekListState extends State<SicakIcecekList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 5,
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
      itemCount: widget.icecekList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    IceceklerDetaySayfa(urun: widget.icecekList[index]),
              ),
            );
          },
          child: UrunCard(urun: widget.icecekList[index]),
        );
      },
    );
  }
}
