import 'package:flutter/material.dart';

class ListeOrnek extends StatefulWidget {
  final PageStorageKey listKey;
  const ListeOrnek({required this.listKey, super.key});

  @override
  State<ListeOrnek> createState() => _ListeOrnekState();
}

class _ListeOrnekState extends State<ListeOrnek> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: widget.listKey,
      itemExtent: 200,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10),
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            color: index % 2 == 0
                ? Colors.orange.shade300
                : Colors.indigo.shade300,
            child: Center(
              child: Text(
                "${index + 1}. kutu",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ),
        );
      },
    );
  }
}
