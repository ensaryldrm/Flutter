import 'package:flutter/material.dart';

class ExpansiontilePage extends StatefulWidget {
  final PageStorageKey expansionKey;
  const ExpansiontilePage({required this.expansionKey, super.key});

  @override
  State<ExpansiontilePage> createState() => _ExpansiontilePageState();
}

class _ExpansiontilePageState extends State<ExpansiontilePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey(index),
          leading: Icon(Icons.assessment),
          title: Text("Başlık ${index + 1}"),
          children: [
            Container(
              height: 200,
              color: Colors.grey.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${index + 1}. Yazı",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
