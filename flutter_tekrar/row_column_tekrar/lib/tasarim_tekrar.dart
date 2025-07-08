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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //title: Text("Sliver Appbar"),
            floating: false,
            pinned: true,
            snap: false,
            foregroundColor: Colors.white,
            backgroundColor: Colors.red.shade300,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Sliverappbar",
                style: TextStyle(color: Colors.white),
              ),
              //centerTitle: true,
              background: Image.network(
                "https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554_1280.jpg",
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(childCount: 23, (
              context,
              index,
            ) {
              return dinamikGridElemani(index);
            }),
          ),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverGrid(
              delegate: SliverChildListDelegate([
                sabitGridViewEleman(Colors.red),
                sabitGridViewEleman(Colors.green),
                sabitGridViewEleman(Colors.black),
                sabitGridViewEleman(Colors.blue),
                sabitGridViewEleman(Colors.cyan),
                sabitGridViewEleman(Colors.yellow),
                sabitGridViewEleman(Colors.amber),
                sabitGridViewEleman(Colors.purple),
                sabitGridViewEleman(Colors.pink),
                sabitGridViewEleman(Colors.grey),
                sabitGridViewEleman(Colors.lightGreen),
                sabitGridViewEleman(Colors.lightGreenAccent),
              ]),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  GridView GridViewBuilderKullanimi() {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        maxCrossAxisExtent: 200,
      ),
      itemBuilder: (context, index) {
        return dinamikGridElemani(index);
      },
    );
  }

  GridView GridViewExtendKullanimi() {
    return GridView.extent(
      mainAxisSpacing: 20,
      maxCrossAxisExtent: 150,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      children: [
        sabitGridViewEleman(Colors.red),
        sabitGridViewEleman(Colors.black),
        sabitGridViewEleman(Colors.blue),
        sabitGridViewEleman(Colors.green),
        sabitGridViewEleman(Colors.grey),
        sabitGridViewEleman(Colors.yellow),
        sabitGridViewEleman(Colors.amber),
        sabitGridViewEleman(Colors.pink),
        sabitGridViewEleman(Colors.purple),
        sabitGridViewEleman(Colors.greenAccent),
      ],
    );
  }

  SizedBox sabitEleman() {
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
                  leading: CircleAvatar(child: Text("10")),
                  title: Text("Ensar"),
                  subtitle: Text("Yıldırım"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget sabitGridViewEleman(Color renk) {
    return Container(height: 150, color: renk, child: Text("Deneme"));
  }

  Widget dinamikGridElemani(int index) {
    return Container(
      height: 75,
      child: Text("Eleman ${index + 1}"),
      color: Colors.teal[(((index + 1) % 8) + 1) * 100],
    );
  }
}
