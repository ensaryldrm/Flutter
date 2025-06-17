import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProject(),
    );
  }
}

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Veri Sayfası"),
        backgroundColor: Colors.green.shade400,
        foregroundColor: Colors.white,
      ),
      body: anaSayfa(),
    );
  }
}

class anaSayfa extends StatelessWidget {
  const anaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController adSoyadText = TextEditingController();
    String adSoyad;

    TextEditingController butceText= TextEditingController();
    double butce;

    TextEditingController artisMiktariText = TextEditingController();
    double artisMiktari;

    TextEditingController azalisMiktariText = TextEditingController();
    double azalisMiktari;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // AD-SOYAD
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: adSoyadText,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                label: Text("Ad Soyad"),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade400,
                    width: 3
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green.shade400,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(15),
                )
              ),
            ),

          ),

          // BUTCE KISMI
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: butceText,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                label: Text("Bütçeyi gir"),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade400,
                    width: 3
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green.shade400,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(15),
                )
              ),
            ),

          ),

          // ARTIS MIKTARI
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: artisMiktariText,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                label: Text("Arttırma Miktarı"),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade400,
                    width: 3
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green.shade400,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(15),
                )
              ),
            ),

          ),

          // AZALIS MIKTARI
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: azalisMiktariText,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                label: Text("Azalış Miktarı"),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade400,
                    width: 3
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green.shade400,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(15),
                )
              ),
            ),

          ),
          SizedBox(height: 10,),

          ElevatedButton(onPressed: (){
            adSoyad = adSoyadText.text;
            butce = double.parse(butceText.text);
            artisMiktari = double.parse(artisMiktariText.text);
            azalisMiktari = double.parse(azalisMiktariText.text);

            Navigator.push(context, MaterialPageRoute(builder: (context) => sonucSayfa(adSoyad,butce,artisMiktari,azalisMiktari)));
          },
          child: Text("Gönder",style: TextStyle(
            color: Colors.white,
          ),
          ),
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                color: Colors.blue,
                width: 2
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
            )
          )
        ],
      ),
    );
  }
}

// SONUC SAYFA KISMI
class sonucSayfa extends StatefulWidget {
  final String adSoyad;
  final double butce;
  final double artisMiktari;
  final double azalisMiktari;

  const sonucSayfa(this.adSoyad,this.butce,this.artisMiktari,this.azalisMiktari);

  @override
  State<sonucSayfa> createState() => _sonucSayfaState();
}

class _sonucSayfaState extends State<sonucSayfa> {
  double yeniButce = 0;

  @override
  void initState() {
    super.initState();
    yeniButce = widget.butce;  // Burada hata vermez
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        appBar: AppBar(
          title: Text("Sonuç Sayfası"),
          centerTitle: true,
          backgroundColor: Colors.amber.shade800,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Ad Soyad: ${widget.adSoyad}", style: TextStyle(
                fontSize: 27,
              ),
              ),
              Text("Bütçe: ${yeniButce}", style: TextStyle(
                color: yeniButce < 0 ? Colors.red : Colors.green,
              ),
              ),
              Text("Arttırma miktarı: ${widget.artisMiktari} - Azaltma Miktarı: ${widget.azalisMiktari}"),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                           yeniButce -= widget.azalisMiktari;
                        });
                      },
                      child: Text("Azalt", style: TextStyle(fontSize: 22),)
                      ),
                    ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      yeniButce += widget.artisMiktari;
                    });
                  },
                  child: Text("Arttır", style: TextStyle(fontSize: 22),)
                  ),
                ),

                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}