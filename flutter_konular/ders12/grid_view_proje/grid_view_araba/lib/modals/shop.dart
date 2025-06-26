class Shop {
  String imgUrl;
  String urunAd;
  int urunFiyat;
  int urunTicket;
  int kalanGun;
  double yuzdelik;
  bool dugmeyeBasildiMi = false;

  Shop({
    required this.imgUrl,
    required this.urunAd,
    required this.urunFiyat,
    required this.urunTicket,
    required this.kalanGun,
    required this.yuzdelik,
  });
}
