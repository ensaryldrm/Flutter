import 'package:coffy_app/modals/urun.dart';
import 'package:coffy_app/views/detaySayfalar/kahvaltilik_detay_sayfa.dart';
import 'package:coffy_app/widgets/urun_card.dart';
import 'package:flutter/material.dart';

class KahvaltilikList extends StatefulWidget {
  final List<Urun> kahvaltilikList;
  KahvaltilikList({required this.kahvaltilikList, super.key});

  @override
  State<KahvaltilikList> createState() => _KahvaltilikListState();
}

class _KahvaltilikListState extends State<KahvaltilikList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 5,
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
      itemCount: widget.kahvaltilikList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    KahvaltilikDetaySayfa(urun: widget.kahvaltilikList[index]),
              ),
            );
          },
          child: UrunCard(urun: widget.kahvaltilikList[index]),
        );
      },
    );
  }
}
