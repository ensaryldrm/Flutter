import 'package:flutter/material.dart';
import 'package:row_column_tekrar/modals/ogrenci.dart';

class TasarimTekrar extends StatefulWidget {
  const TasarimTekrar({super.key});

  @override
  State<TasarimTekrar> createState() => _TasarimTekrarState();
}

class _TasarimTekrarState extends State<TasarimTekrar> {
  List<Ogrenci> tumOgrenciler = List.generate(
    500,
    (index) => Ogrenci(
      isim: "Öğrenci adı: ${index + 1}",
      soyisim: "Öğrenci soyadı: ${index + 1}",
      id: index + 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 170, 178, 130),
        title: Text("Row - Column Tekrar"),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.separated(
          itemBuilder: (context, index) {
            Ogrenci ogr = tumOgrenciler[index];
            return veriAlanSabitEleman(ogr);
          },
          separatorBuilder: (context, index) {
            return (index + 1) % 4 == 0
                ? Divider(color: Colors.black, thickness: 3)
                : Container();
          },
          itemCount: tumOgrenciler.length,
        ),
      ),
    );
  }

  SizedBox veriAlanSabitEleman(Ogrenci ogr) {
    return SizedBox(
      height: 90,
      child: Row(
        children: [
          Expanded(
            child: Card(
              color: Colors.pink.shade100,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.center,
                child: ListTile(
                  onTap: () {},
                  leading: CircleAvatar(child: Text(ogr.id.toString())),
                  title: Text(ogr.isim),
                  subtitle: Text(ogr.soyisim),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
