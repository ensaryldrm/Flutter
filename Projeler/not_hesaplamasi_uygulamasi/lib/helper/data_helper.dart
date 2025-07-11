import 'package:flutter/material.dart';
import 'package:not_hesaplamasi_uygulamasi/model/ders.dart';

class DataHelper {
  // DROPDOWN HARFLERİ İÇİN HARF LİSTESİ OLUŞTURDUK
  static List<String> _tumDerslerinHarfleri() {
    return ["AA", "BA", "BB", "CB", "CC", "DC", "DD", "FD", "FF"];
  }

  // 1 den 10 a kadar kredi list oluşturuyoruz
  static List<int> _tumKrediler() {
    return List.generate(10, (index) {
      return index + 1;
    });
  }

  // ALDIĞIMIZ HARFLERE GÖRE HARF NOTU DÖNDÜRÜYORUZ
  static double _harfiNotaCevir(String harf) {
    switch (harf) {
      case "AA":
        return 4;
      case "BA":
        return 3.5;
      case "BB":
        return 3;
      case "CB":
        return 2.5;
      case "CC":
        return 2;
      case "DC":
        return 1.5;
      case "DD":
        return 1;
      case "FD":
        return 0.5;
      case "FF":
        return 0.0;

      default:
        return 1;
    }
  }

  // HARF LİSTESİNDEKİ ELEMANLAR İÇİN DropdownMenuItem DÖNÜŞTÜREN METOD YAPTIK
  static List<DropdownMenuItem<double>> tumDerslerinHarfleri() {
    return _tumDerslerinHarfleri().map((gelenHarf) {
      return DropdownMenuItem(
        value: _harfiNotaCevir(gelenHarf),
        child: Text(gelenHarf),
      );
    }).toList();
  }

  // KREDİ LİSTESİNDEKİ ELEMANLAR İÇİN DropdownMenuItem DÖNÜŞTÜRED METOD YAPTIK
  static List<DropdownMenuItem<int>> tumDerslerinKredileri() {
    return _tumKrediler().map((gelenKredi) {
      return DropdownMenuItem(
        value: gelenKredi,
        child: Text(gelenKredi.toString()),
      );
    }).toList();
  }

  // EKLEYECEĞİMİZ DERSLER İÇİN LİSTE OLUŞTURDUK
  static List<Ders> tumEklenecekDersler = [];

  // LİSTEYE ELEMAN EKLEMEK İÇİN METOD YAPTIK
  static dersEkle(Ders ders) {
    tumEklenecekDersler.add(ders);
  }

  // LİSTEDEKİ ELEMANI SİLMEK İÇİN METOD YAPTIK
  static dersSil(Ders ders) {
    tumEklenecekDersler.remove(ders);
  }

  // HER DERS İÇİN ORTALAMA HESAPLAMA METODU YAPTIK
  static double ortalamaHesapla() {
    double toplamNot = 0;
    double toplamKredi = 0;

    tumEklenecekDersler.forEach((gelenDers) {
      toplamNot = toplamNot + (gelenDers.krediDegeri * gelenDers.harfDegeri);
      toplamKredi += gelenDers.krediDegeri;
    });

    return toplamNot / toplamKredi;
  }
}
