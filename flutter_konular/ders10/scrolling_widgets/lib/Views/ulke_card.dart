import 'package:flutter/material.dart';

class UlkeCard extends StatefulWidget {
  final int index;
  final String ulkeAdi;

  const UlkeCard({required this.index, required this.ulkeAdi});

  @override
  State<UlkeCard> createState() => _UlkeCardState();
}

class _UlkeCardState extends State<UlkeCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: widget.index % 2 == 0
              ? Colors.cyan.shade600
              : Colors.grey.shade500,
        ),
        alignment: Alignment.center,
        height: 100,
        child: ListTile(
          title: Text(widget.ulkeAdi),
          leading: CircleAvatar(child: Text((widget.index + 1).toString())),
          trailing: Icon(Icons.arrow_right),
        ),
      ),
    );
  }
}
