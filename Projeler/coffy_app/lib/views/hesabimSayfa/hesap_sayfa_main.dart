import 'package:coffy_app/views/hesabimSayfa/pages/arkadasini_oner.dart';
import 'package:coffy_app/views/hesabimSayfa/pages/favori_sayfa.dart';
import 'package:coffy_app/views/hesabimSayfa/pages/iletisim_tercihleri.dart';
import 'package:flutter/material.dart';

class HesapSayfaMain extends StatefulWidget {
  final String isim;
  final String telNo;
  final String soyIsim;
  const HesapSayfaMain({
    required this.isim,
    required this.soyIsim,
    required this.telNo,
    super.key,
  });

  @override
  State<HesapSayfaMain> createState() => _HesapSayfaMainState();
}

class _HesapSayfaMainState extends State<HesapSayfaMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 236, 240),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Hesabım",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Text(
                                            "Kişisel Bilgiler",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Text(
                                                "${widget.isim} ${widget.soyIsim}",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                child: Icon(
                                                  Icons.edit,
                                                  size: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Text(
                                            "16.10.2005",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Text(
                                            "Ensar_Yldrm@outlook.com",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Text(
                                            "Telefon Numarası",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Text(
                                                "${widget.telNo}",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                child: Icon(
                                                  Icons.edit,
                                                  size: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ArkadasiniOner(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 116, 194, 181),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Colors.grey.shade200,
                                            ),
                                          ),
                                          child: Icon(Icons.handshake),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Arkadaşına Öner",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "Şimdi Arkadşını Davet Et. Sen de Ödüllerden\nFaydalan!",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                          size: 14,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // DÜĞMELER
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(Icons.wallet_outlined),
                          SizedBox(width: 10),
                          Text(
                            "Coffy Cüzdan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 14),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => FavoriSayfa(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 20),
                            Icon(Icons.favorite_outline),
                            SizedBox(width: 10),
                            Text(
                              "Favorilerim",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios, size: 14),
                            SizedBox(width: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(Icons.shopping_bag_outlined),
                          SizedBox(width: 10),
                          Text(
                            "Önceki Siparişlerim",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 14),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(Icons.wallet_outlined),
                          SizedBox(width: 10),
                          Text(
                            "Kayıtlı Kartlarım",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 14),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => IletisimTercihleri(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 20),
                            Icon(Icons.notifications_outlined),
                            SizedBox(width: 10),
                            Text(
                              "İletişim Tercihleri",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios, size: 14),
                            SizedBox(width: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(Icons.local_hospital),
                          SizedBox(width: 10),
                          Text(
                            "Yardım Merkezi",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 14),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(Icons.animation_outlined),
                          SizedBox(width: 10),
                          Text(
                            "Alerjen Listesi",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 14),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(Icons.shopify),
                          SizedBox(width: 10),
                          Text(
                            "Şubeler",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 14),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(Icons.language),
                          SizedBox(width: 10),
                          Text(
                            "Dil Bilgileri",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 14),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(Icons.exit_to_app_outlined),
                          SizedBox(width: 10),
                          Text(
                            "Çıkış Yap",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 14),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
