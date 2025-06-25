import 'package:flutter/material.dart';
import 'package:yemek_uygulama/modals/eat.dart';
import 'package:yemek_uygulama/views/detaySayfa.dart';

class MainSayfa extends StatefulWidget {
  const MainSayfa({super.key});

  @override
  State<MainSayfa> createState() => _MainSayfaState();
}

class _MainSayfaState extends State<MainSayfa> {
  @override
  Widget build(BuildContext context) {
    String yemekFoto = "images";

    Yemek yemek1 = Yemek(
      yemekAd: "Izgara köfte",
      yemekFiyat: 350,
      aciklama: "seviyorum",
      imgUrl: "$yemekFoto/kofte_izgara.png",
    );

    Yemek yemek2 = Yemek(
      yemekAd: "Karisik kebap",
      yemekFiyat: 1200,
      aciklama: "seviyorum",
      imgUrl: "$yemekFoto/karisik_kebap.png",
    );

    Yemek yemek3 = Yemek(
      yemekAd: "Kuzu Şiş",
      yemekFiyat: 900,
      aciklama: "seviyorum",
      imgUrl: "$yemekFoto/kuzu_sis.png",
    );

    Yemek yemek4 = Yemek(
      yemekAd: "Sarma Ciğer",
      yemekFiyat: 750,
      aciklama: "sevmiyorum",
      imgUrl: "$yemekFoto/sarma_ciger.png",
    );

    Yemek yemek5 = Yemek(
      yemekAd: "Tantuni",
      yemekFiyat: 450,
      aciklama: "seviyorum",
      imgUrl: "$yemekFoto/tantuni.png",
    );

    Yemek yemek6 = Yemek(
      yemekAd: "iskender",
      yemekFiyat: 530,
      aciklama: "seviyorum",
      imgUrl: "$yemekFoto/iskender.png",
    );

    Yemek yemek7 = Yemek(
      yemekAd: "Mumbar",
      yemekFiyat: 600,
      aciklama: "yemedim",
      imgUrl: "$yemekFoto/mumbar.png",
    );

    Yemek yemek8 = Yemek(
      yemekAd: "Kokoreç",
      yemekFiyat: 280,
      aciklama: "yemedim",
      imgUrl: "$yemekFoto/kokorec.png",
    );

    Yemek yemek9 = Yemek(
      yemekAd: "Kuzu Tandır",
      yemekFiyat: 670,
      aciklama: "yemedim",
      imgUrl: "$yemekFoto/kuzu_tandir.png",
    );

    Yemek yemek10 = Yemek(
      yemekAd: "Lahmacun",
      yemekFiyat: 150,
      aciklama: "seviyorum",
      imgUrl: "$yemekFoto/lahmacun.png",
    );

    Yemek yemek11 = Yemek(
      yemekAd: "Karışık Pide",
      yemekFiyat: 340,
      aciklama: "seviyorum",
      imgUrl: "$yemekFoto/karisik_pide.png",
    );

    List<Yemek> yemekList = [
      yemek1,
      yemek2,
      yemek3,
      yemek4,
      yemek5,
      yemek6,
      yemek7,
      yemek8,
      yemek9,
      yemek10,
      yemek11,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Yemekler Ana Sayfa"),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 172, 7, 7),
      ),
      body: ListView.builder(
        itemCount: yemekList.length,
        itemBuilder: (context, index) {
          return YemekleriEkledigimizYer(yemekList: yemekList[index]);
        },
      ),
    );
  }
}

class YemekleriEkledigimizYer extends StatefulWidget {
  final Yemek yemekList;

  const YemekleriEkledigimizYer({required this.yemekList});

  @override
  State<YemekleriEkledigimizYer> createState() =>
      _YemekleriEkledigimizYerState();
}

class _YemekleriEkledigimizYerState extends State<YemekleriEkledigimizYer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30),
        ),
        elevation: 10,
        shadowColor: Color.fromARGB(150, 172, 7, 7),
        color: Color.fromARGB(100, 172, 7, 7),
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetaySayfa(
                  yemek: Yemek(
                    yemekAd: widget.yemekList.yemekAd,
                    yemekFiyat: widget.yemekList.yemekFiyat,
                    aciklama: widget.yemekList.aciklama,
                    imgUrl: widget.yemekList.imgUrl,
                  ),
                ),
              ),
            );
          },
          leading: CircleAvatar(
            backgroundImage: AssetImage("${widget.yemekList.imgUrl}"),
          ),
          title: Text(widget.yemekList.yemekAd),
          subtitle: Text("Fiyat: ${widget.yemekList.yemekFiyat}"),
        ),
      ),
    );
  }
}
