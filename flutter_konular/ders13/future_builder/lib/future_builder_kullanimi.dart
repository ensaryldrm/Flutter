import 'package:flutter/material.dart';

class FutureBuilderKullanimi extends StatefulWidget {
  const FutureBuilderKullanimi({super.key});

  @override
  State<FutureBuilderKullanimi> createState() => _FutureBuilderKullanimiState();
}

class _FutureBuilderKullanimiState extends State<FutureBuilderKullanimi> {
  Future<int> faktoriyelHesapla(int sayi) async {
    int sonuc = 1;
    for (int i = 1; i <= sayi; i++) {
      sonuc *= i;
    }

    return sonuc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade700,
        foregroundColor: Colors.white,
        title: Text("Future Builder Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Future verilerin dönüşümünde listeleme için kullanılır.
            FutureBuilder<int>(
              future: faktoriyelHesapla(8),
              builder:
                  (context, snapshot) //SNAPSHOT BURADA DÖNEN VERİ
                  {
                    // EĞER FONKSİYON VERİ GETİRİRKEN BİR SORUN OLURSA BU DEĞİŞKEN NULL DEĞER ALIR O DA HATA DÖNDÜRÜR
                    if (snapshot.hasError) {
                      debugPrint("Hata oldu ${snapshot.error}");
                    }
                    // EĞER YUKARIDAKİ FONKSİYON ÇALIŞTI VE VERİ GELDİYSE  AŞAĞIDAKİ FONKSİYON ÇALIŞIR.
                    if (snapshot.hasData) {
                      return Text("Sonuc: ${snapshot.data}");
                    } else {
                      return Text("Gösterilecek bir veri yok!");
                    }
                  },
            ),
          ],
        ),
      ),
    );
  }
}
