import 'package:coffy_app/modals/urun.dart';

List<String> kategoriler = [
  "En Çok Satanlar",
  "Sıcak İçecekler",
  "Soğuk İçecekler",
];

List<Urun> urunlerListesi = [
  Urun(
    ad: "Cappuccino",
    resimUrl: "resimler/sicakIcecek/cappuccino.png",
    fiyat: 75,
    kategori: "Sıcak İçecekler",
  ),
  Urun(
    ad: "Iced Latte",
    resimUrl: "resimler/sogukIcecek/buzlu_latte.png",
    fiyat: 85,
    kategori: "Soğuk İçecekler",
  ),
  Urun(
    ad: "Espresso",
    resimUrl: "resimler/sicakIcecek/espresso.png",
    fiyat: 65,
    kategori: "Sıcak İçecekler",
  ),
  Urun(
    ad: "Caramel Latte",
    resimUrl: "resimler/sogukIcecek/caramel_latte.png",
    fiyat: 90,
    kategori: "Soğuk İçecekler",
  ),
  Urun(
    ad: "Sufle",
    resimUrl: "resimler/tatli/sufle.png",
    fiyat: 95,
    kategori: "En Çok Satanlar",
  ),
];