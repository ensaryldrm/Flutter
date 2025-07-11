import 'package:flutter/material.dart';
import 'package:not_hesaplamasi_uygulamasi/constants/sabitler.dart';
import 'package:not_hesaplamasi_uygulamasi/helper/data_helper.dart';
import 'package:not_hesaplamasi_uygulamasi/model/ders.dart';

class DersListesi extends StatelessWidget {
  Function onElemanCikarildi;
  DersListesi({super.key, required this.onElemanCikarildi});

  @override
  Widget build(BuildContext context) {
    List<Ders> tumDersler = DataHelper.tumEklenecekDersler;

    return tumDersler.length > 0
        ? ListView.builder(
            itemCount: tumDersler.length,
            itemBuilder: (context, index) {
              return Dismissible(
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.delete, color: Colors.white),
                ),
                key: UniqueKey(),
                direction: DismissDirection.startToEnd,
                onDismissed: (a) {
                  onElemanCikarildi(index);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        title: Text(
                          tumDersler[index].ad,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "${tumDersler[index].krediDegeri} kredi, Not değeri: ${tumDersler[index].harfDegeri}",
                        ),
                        leading: CircleAvatar(
                          radius: 36,
                          backgroundColor: Sabitler.anaRenk,
                          child: Text(
                            (tumDersler[index].harfDegeri *
                                    tumDersler[index].krediDegeri)
                                .toStringAsFixed(2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        : Center(
            child: Text(
              "Lütfen Ders Ekleyiniz",
              style: TextStyle(
                color: Sabitler.anaRenk,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }
}
