import 'dart:convert';

import 'package:api_islemleri/model/araba_model.dart';
import 'package:flutter/material.dart';

class LocalApiIslemleri extends StatefulWidget {
  const LocalApiIslemleri({super.key});

  @override
  State<LocalApiIslemleri> createState() => _LocalApiIslemleriState();
}

class _LocalApiIslemleriState extends State<LocalApiIslemleri> {
  late Future<List<ArabaModel>> arabalar;

  @override
  void initState() {
    super.initState();
    arabalar = arabalarJsonOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local API"),
        backgroundColor: Colors.pink.shade400,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: FutureBuilder<List<ArabaModel>>(
          future: arabalar,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ArabaModel> arabaList = snapshot.data!;
              return ListView.builder(
                itemCount: arabaList.length,
                itemBuilder: (context, index) {
                  ArabaModel araba = arabaList[index];
                  return ListTile(
                    title: Text(araba.arabaAdi),
                    subtitle: Text(araba.ulke),
                    leading: CircleAvatar(
                      child: Text(araba.kurulusYili),
                      radius: 48,
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<List<ArabaModel>> arabalarJsonOku() async {
    try {
      // Bir json bize daime string veri döndürür
      String okunanString = await DefaultAssetBundle.of(
        context,
      ).loadString("data/arabalar.json");

      //String .json formatına dönüştürmemiz gerekiyor.
      var jsonObject = jsonDecode(okunanString);
      List<ArabaModel> tumArabalar = (jsonObject as List).map((arabaMap) {
        return ArabaModel.fromJson(arabaMap);
      }).toList();

      return tumArabalar;
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
