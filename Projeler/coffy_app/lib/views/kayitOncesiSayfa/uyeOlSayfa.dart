import 'package:coffy_app/views/anaSayfa/anaSayfa.dart';
import 'package:flutter/material.dart';

class UyeOlSayfa extends StatefulWidget {
  const UyeOlSayfa({super.key});

  @override
  State<UyeOlSayfa> createState() => _UyeOlSayfaState();
}

class _UyeOlSayfaState extends State<UyeOlSayfa> {
  TextEditingController telNoText = TextEditingController();
  TextEditingController adText = TextEditingController();
  TextEditingController soyadText = TextEditingController();
  bool dugmeyeBasildiMi = false;
  bool herseyGirildiMi = false;

  @override
  void initState() {
    super.initState();
    telNoText.addListener(buttonGuncelle);
    adText.addListener(buttonGuncelle);
    soyadText.addListener(buttonGuncelle);
  }

  void buttonGuncelle() {
    final girildiMi =
        telNoText.text.isNotEmpty &&
        adText.text.isNotEmpty &&
        soyadText.text.isNotEmpty;
    setState(() {
      herseyGirildiMi = dugmeyeBasildiMi && girildiMi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 236, 240),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 175,
                  color: Colors.black,
                  // EN ÜST COFFY + GERİ TUŞU
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // ICON
                              Container(
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.west,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),

                              // COFFY YAZISI
                              Container(
                                width: 100,
                                child: Image.asset(
                                  "resimler/coffy_logo.png",
                                  color: Colors.white,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        margin: EdgeInsets.only(top: 60),
                        height: 720,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 25,
                          ),
                          child: Column(
                            children: [
                              // ÜYE OL YAZISI
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "Üye Ol",
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // boşluk için sizedbox
                              SizedBox(height: 15),

                              // alt metin
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "Enfes lezzete ulaşmana çok az kaldı, giriş yap ve",
                                    ),
                                  ),
                                ],
                              ),

                              // alt metin2
                              Row(
                                children: [
                                  Container(
                                    child: Text("hemen siparişini ver!"),
                                  ),
                                ],
                              ),

                              // boşluk için sizedbox
                              SizedBox(height: 15),

                              // telefon no text
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Telefon Numarası",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // boşluk için sizedbox
                              SizedBox(height: 10),

                              // tel no textfield
                              TextField(
                                maxLength: 10,
                                decoration: InputDecoration(
                                  counterText: "",
                                  prefix: SizedBox(width: 20),
                                  hintText: "Telefon Numarası",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade400,
                                      width: 1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                keyboardType: TextInputType.numberWithOptions(),
                                controller: telNoText,
                              ),

                              // boşluk için sizedbox
                              SizedBox(height: 20),

                              // Ad text
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Ad",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // boşluk için sizedbox
                              SizedBox(height: 10),

                              // Ad textfield
                              TextField(
                                decoration: InputDecoration(
                                  prefix: SizedBox(width: 20),
                                  hintText: "Ad",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade400,
                                      width: 1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                keyboardType: TextInputType.name,
                                controller: adText,
                              ),

                              // boşluk için sizedbox
                              SizedBox(height: 20),

                              // Soyad text
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Soyad",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // boşluk için sizedbox
                              SizedBox(height: 10),

                              // Soyad textfield
                              TextField(
                                decoration: InputDecoration(
                                  prefix: SizedBox(width: 20),
                                  hintText: "Soyad",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade400,
                                      width: 1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                keyboardType: TextInputType.name,
                                controller: soyadText,
                              ),

                              // ilk satır yazılar
                              Row(
                                children: [
                                  Text(
                                    "Devam Et butonuna tıklayarak",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    "Üyelik Sözleşmesi",
                                    style: TextStyle(
                                      color: Colors.blue.shade600,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(" ve", style: TextStyle(fontSize: 13)),
                                ],
                              ),

                              // İKİNCİ SATIR YAZILAR
                              Row(
                                children: [
                                  Text(
                                    "uygulama üyeliğine yönelik ",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    "Aydınlatma Metni",
                                    style: TextStyle(
                                      color: Colors.blue.shade600,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "'ni kabul",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),

                              // üçüncü satır yazılar
                              Row(
                                children: [
                                  Text(
                                    "edebilirsiniz.",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),

                              // boşluk için sizedbox
                              SizedBox(height: 10),

                              // düz çizgi için divider
                              Row(
                                children: [
                                  Expanded(
                                    child: Divider(color: Colors.grey.shade800),
                                  ),
                                ],
                              ),

                              // switch + yazı
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        Switch(
                                          inactiveThumbColor:
                                              Colors.grey.shade600,
                                          inactiveTrackColor: Colors.white,
                                          activeColor: Colors.white,
                                          activeTrackColor: Colors.blue,
                                          value: dugmeyeBasildiMi,
                                          onChanged: (gelenSecim) {
                                            setState(() {
                                              dugmeyeBasildiMi = gelenSecim;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),

                                  // ara boşluk
                                  SizedBox(width: 10),

                                  Expanded(
                                    flex: 6,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "KVKK uyarınca kişisel verilerimin",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                            Text(
                                              " Açık Rıza",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.blue.shade600,
                                              ),
                                            ),
                                          ],
                                        ),

                                        Row(
                                          children: [
                                            Text(
                                              "Metni",
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              "'nde belirtilen hususlar kapsamında",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          ],
                                        ),

                                        Row(
                                          children: [
                                            Text(
                                              "işlenmesini ve aktarılmasını; ETK uyarınca",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "tarafıma ",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                            Text(
                                              "Ticari Elektronik İleti ",
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontSize: 13,
                                              ),
                                            ),
                                            Text(
                                              "gönderilmesine",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          ],
                                        ),

                                        Row(
                                          children: [
                                            Text(
                                              "onay verdiğimi kabul ediyorum.",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              // ara boşluk
                              SizedBox(height: 25),

                              // elevatedbutton
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          disabledBackgroundColor:
                                              Color.fromARGB(
                                                255,
                                                238,
                                                241,
                                                246,
                                              ),
                                          disabledForegroundColor:
                                              Color.fromARGB(
                                                255,
                                                221,
                                                222,
                                                227,
                                              ),
                                          backgroundColor: Color.fromARGB(
                                            255,
                                            118,
                                            191,
                                            180,
                                          ),
                                          foregroundColor: Colors.white,
                                          elevation: 0,
                                        ),
                                        onPressed: herseyGirildiMi
                                            ? () {
                                                Navigator.of(
                                                  context,
                                                ).pushAndRemoveUntil(
                                                  MaterialPageRoute(
                                                    builder: (_) => AnaSayfa(
                                                      isim: adText.text,
                                                      telNo: telNoText.text,
                                                      soyIsim: soyadText.text,
                                                    ),
                                                  ),
                                                  (Route<dynamic> route) =>
                                                      false,
                                                );
                                              }
                                            : null,
                                        child: Text("Devam Et"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // Ara boşluk
            SizedBox(height: 15),

            // ÜYE MİSİN YAZISI
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Üye misin?",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Giriş yap",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue.shade600,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue.shade600,
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
    );
  }
}
