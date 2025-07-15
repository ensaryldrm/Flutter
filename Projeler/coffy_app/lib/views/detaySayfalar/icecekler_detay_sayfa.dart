import 'package:coffy_app/modals/urun.dart';
import 'package:flutter/material.dart';

class IceceklerDetaySayfa extends StatefulWidget {
  final Urun urun;
  IceceklerDetaySayfa({required this.urun, super.key});

  @override
  State<IceceklerDetaySayfa> createState() => _IceceklerDetaySayfaState();
}

class _IceceklerDetaySayfaState extends State<IceceklerDetaySayfa> {
  String? secilenBoyut = "M";
  String? secilenSut = "Standart Süt";
  late double urunFiyat;

  bool checkbox_bir = false;
  bool checkbox_iki = false;
  bool checkbox_uc = false;
  bool checkbox_dort = false;
  bool checkbox_bes = false;
  bool checkbox_alti = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    urunFiyat = widget.urun.fiyat;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 25, right: 25, bottom: 30),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "${urunFiyat.toStringAsFixed(0)} TL",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color.fromARGB(255, 116, 194, 181),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Sepete ekle",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 235, 236, 240),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(widget.urun.resimUrl),
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 20),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 116, 194, 181),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
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
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.urun.ad,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(children: [Text("Güzel içecek")]),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 116, 194, 181),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      "+1",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Text(
                                    "Bu ürün ile 1 adet Çekirdek kazanma fırsatı!",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Material(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              color: Colors.white,
                              elevation: 5,
                              child: Container(
                                width: 100,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 30,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey.shade200,
                                      ),
                                      child: Icon(Icons.remove),
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      width: 30,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
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
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Boy Seçimi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 20,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.green.shade600,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Zorunlu",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.local_drink_outlined,
                                          size: 30,
                                        ),
                                        Icon(
                                          Icons.local_drink_outlined,
                                          size: 40,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 18,
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(width: 10),
                                            Expanded(
                                              child: Container(
                                                child: Text(
                                                  "${widget.urun.ad} - M",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Radio(
                                              activeColor: Colors.black,
                                              focusColor: Colors.black,
                                              hoverColor: Colors.black,
                                              value: "M",
                                              groupValue: secilenBoyut,
                                              onChanged: (value) {
                                                setState(() {
                                                  secilenBoyut = value;
                                                  urunFiyat = widget.urun.fiyat;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(width: 10),
                                            Expanded(
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "${widget.urun.ad} - L",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      "+15 TL",
                                                      style: TextStyle(
                                                        color: Colors
                                                            .grey
                                                            .shade400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Radio(
                                              activeColor: Colors.black,
                                              focusColor: Colors.black,
                                              hoverColor: Colors.black,
                                              value: "L",
                                              groupValue: secilenBoyut,
                                              onChanged: (value) {
                                                setState(() {
                                                  secilenBoyut = value;
                                                  urunFiyat += 15;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    height: 300,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Süt Seçimi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 20,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.green.shade600,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Zorunlu",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 240,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Container(
                                          child: Text(
                                            "Standart Süt",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Radio(
                                          activeColor: Colors.black,
                                          focusColor: Colors.black,
                                          hoverColor: Colors.black,
                                          value: "Standart Süt",
                                          groupValue: secilenSut,
                                          onChanged: (value) {
                                            setState(() {
                                              secilenSut = value;
                                              urunFiyat = widget.urun.fiyat;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Container(
                                          child: Text(
                                            "Yağsız Süt",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Radio(
                                          activeColor: Colors.black,
                                          focusColor: Colors.black,
                                          hoverColor: Colors.black,
                                          value: "Yağsız Süt",
                                          groupValue: secilenSut,
                                          onChanged: (value) {
                                            setState(() {
                                              secilenSut = value;
                                              urunFiyat = widget.urun.fiyat;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Container(
                                          child: Text(
                                            "Laktozsuz Süt",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Radio(
                                          activeColor: Colors.black,
                                          focusColor: Colors.black,
                                          hoverColor: Colors.black,
                                          value: "Laktozsuz Süt",
                                          groupValue: secilenSut,
                                          onChanged: (value) {
                                            setState(() {
                                              secilenSut = value;
                                              urunFiyat = widget.urun.fiyat;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Badem Süt",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                "+25 TL",
                                                style: TextStyle(
                                                  color: Colors.grey.shade400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Radio(
                                          activeColor: Colors.black,
                                          focusColor: Colors.black,
                                          hoverColor: Colors.black,
                                          value: "Badem Süt",
                                          groupValue: secilenSut,
                                          onChanged: (value) {
                                            setState(() {
                                              secilenSut = value;
                                              urunFiyat += 25;
                                            });
                                          },
                                        ),
                                      ],
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
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    height: 220,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ekstra Şurup Seçimi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Kiraz Çiçeği Şurubu",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "+20 TL",
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: Colors.black,
                                  value: checkbox_bir,
                                  onChanged: (value) {
                                    setState(() {
                                      checkbox_bir = value!;
                                    });
                                  },
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Vanilya Şurubu",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "+20 TL",
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: Colors.black,
                                  value: checkbox_iki,
                                  onChanged: (value) {
                                    setState(() {
                                      checkbox_iki = value!;
                                    });
                                  },
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Karamel Şurubu",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "+20 TL",
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: Colors.black,
                                  value: checkbox_uc,
                                  onChanged: (value) {
                                    setState(() {
                                      checkbox_uc = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    height: 220,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Birlikte İyi Gider",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "resimler/tatli/ispanyol_kek.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "İspanyol Creamy Cheesecake",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "+150 TL",
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: Colors.black,
                                  value: checkbox_dort,
                                  onChanged: (value) {
                                    setState(() {
                                      checkbox_dort = value!;
                                    });
                                  },
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "resimler/kahvaltilik/atom_bazlama.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Atom Bazlama Sandviç",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "+130 TL",
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: Colors.black,
                                  value: checkbox_bes,
                                  onChanged: (value) {
                                    setState(() {
                                      checkbox_bes = value!;
                                    });
                                  },
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "resimler/kahvaltilik/bagel_sandvic.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Bagel Sandviç",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "+150 TL",
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: Colors.black,
                                  value: checkbox_alti,
                                  onChanged: (value) {
                                    setState(() {
                                      checkbox_alti = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    height: 220,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Not Ekle",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 100,
                                child: TextField(
                                  maxLines: 6,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hint: Text(
                                      "Notunu bu alana yazabilirsin.",
                                      style: TextStyle(
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
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
          ],
        ),
      ),
    );
  }
}
