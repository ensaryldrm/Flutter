import 'package:flutter/material.dart';

class FadeinimageKullanimi extends StatefulWidget {
  const FadeinimageKullanimi({super.key});

  @override
  State<FadeinimageKullanimi> createState() => _FadeinimageKullanimiState();
}

class _FadeinimageKullanimiState extends State<FadeinimageKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade İn İmage Kullanımı",style: TextStyle(fontSize: 25),),
        backgroundColor: const Color.fromARGB(255, 110, 8, 1),
        foregroundColor: const Color.fromARGB(255, 136, 118, 111) ,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInImage.assetNetwork(
              placeholder: "images/place.jpg", //Fotoğraf gelene kadar gözükmesini istediğimiz fotoğrafın yolunu koyduğumuz kısım. İnternet hızına bağlı olarak fotoğraf açılana kadar gözükür.
              image: "https://i.pinimg.com/736x/d8/eb/85/d8eb857a58fc833072c7f2d777c72d03.jpg" //Fotoğrafı yüklediğimiz yer.
            ),
          ],
        ),
      ),
    );
  }
}