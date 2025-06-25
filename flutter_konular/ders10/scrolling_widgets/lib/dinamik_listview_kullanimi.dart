import 'package:flutter/material.dart';
import 'package:scrolling_widgets/Views/ulke_card.dart';

class DinamikListviewKullanimi extends StatefulWidget {
  const DinamikListviewKullanimi({super.key});

  @override
  State<DinamikListviewKullanimi> createState() =>
      _DinamikListviewKullanimiState();
}

class _DinamikListviewKullanimiState extends State<DinamikListviewKullanimi> {
  List<String> ulkeler = [
    "Türkiye",
    "Azerbaycan",
    "Mısır",
    "Filistin",
    "Singapur",
    "Arnavutluk",
    "Katar",
    "Bosna Hersek",
  ];
  String myAppBarTitle = "Dinamik List Kullanımı";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(myAppBarTitle),
        backgroundColor: Colors.cyan.shade600,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: ulkeler.length,
        itemBuilder: (context, index) {
          return UlkeCard(ulkeAdi: ulkeler[index], index: index);
        },
      ),
    );
  }
}

class Basic_ListTile_ViewList extends StatelessWidget {
  const Basic_ListTile_ViewList({super.key, required this.ulkeler});

  final List<String> ulkeler;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ulkeler.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Container(
            height: 100,
            alignment: Alignment.center,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                child: Text("${index + 1}"),
              ),
              title: Text(ulkeler[index]),
              subtitle: Text("${ulkeler[index]}"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        );
      },
    );
  }
}

class BasicCardListView extends StatelessWidget {
  const BasicCardListView({super.key, required this.ulkeler});

  final List<String> ulkeler;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ulkeler.length,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: SizedBox(
              height: 75,
              child: Row(
                children: [
                  Text(ulkeler[index]),
                  Spacer(),
                  Icon(Icons.arrow_right),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
