import 'package:coffy_app/modals/urun.dart';
import 'package:coffy_app/widgets/urun_card.dart';
import 'package:flutter/material.dart';

class TatliList extends StatefulWidget {
  final List<Urun> tatliList;
  TatliList({required this.tatliList, super.key});

  @override
  State<TatliList> createState() => _TatliListState();
}

class _TatliListState extends State<TatliList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 5,
        crossAxisCount: 2,
        childAspectRatio: 1.15,
      ),
      itemCount: widget.tatliList.length,
      itemBuilder: (context, index) {
        return UrunCard(urun: widget.tatliList[index]);
      },
    );
  }
}
