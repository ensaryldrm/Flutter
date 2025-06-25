import 'package:flutter/material.dart';

class AlertKullanimi extends StatefulWidget {
  const AlertKullanimi({super.key});

  @override
  State<AlertKullanimi> createState() => _AlertKullanimiState();
}

class _AlertKullanimiState extends State<AlertKullanimi> {
  String answer = "";
  TextEditingController tfText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog Kullanımı"),
        backgroundColor: Color(0xff990099),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Standart Alert
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Uyarı!"),
                      content: Text("Silmek istediğinize emin misiniz?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            print("Seçildi!");
                            setState(() {
                              answer = "Evet";
                            });
                            Navigator.pop(context);
                          },
                          child: Text("Evet"),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              answer = "Hayır";
                            });
                            Navigator.pop(context);
                          },
                          child: Text("Hayır"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Basit Alert"),
            ),

            // Özelleştirilmiş Alert
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        "Özel Alert",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Color(0xff402020),
                      content: SizedBox(
                        height: 80,
                        child: Column(
                          children: [
                            TextField(
                              style: TextStyle(color: Colors.white),
                              controller: tfText,
                              decoration: InputDecoration(
                                label: Text(
                                  "Veri",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Text(
                            "İptal",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              answer = tfText.text;
                              Navigator.pop(context);
                            });
                          },
                          child: Text(
                            "Veri Oku",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Custom Alert"),
            ),
            Text(answer != "" ? "Verilen Cevap: $answer" : ""),
          ],
        ),
      ),
    );
  }
}
