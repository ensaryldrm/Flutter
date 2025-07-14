import 'package:coffy_app/modals/urun.dart';
import 'package:coffy_app/widgets/urun_card.dart';
import 'package:flutter/material.dart';

class SogukIcecekList extends StatefulWidget {
  final List<Urun> icecekList;
  SogukIcecekList({required this.icecekList, super.key});

  @override
  State<SogukIcecekList> createState() => _SogukIcecekListState();
}

class _SogukIcecekListState extends State<SogukIcecekList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 5,
        crossAxisCount: 2,
        childAspectRatio: 1.15,
      ),
      itemCount: widget.icecekList.length,
      itemBuilder: (context, index) {
        return UrunCard(urun: widget.icecekList[index]);
      },
    );
  }
}
