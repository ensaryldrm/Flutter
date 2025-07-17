import 'package:flutter/material.dart';

class IletisimTercihleri extends StatefulWidget {
  const IletisimTercihleri({super.key});

  @override
  State<IletisimTercihleri> createState() => _IletisimTercihleriState();
}

class _IletisimTercihleriState extends State<IletisimTercihleri> {
  bool email = false;
  bool telefon = false;
  bool sms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 236, 240),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          "İletişim Tercihleri",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SwitchListTile(
              title: Text(
                "E-posta",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Kampanyalar ile ilgili e-posta almak istiyorum",
                style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
              ),
              value: email,
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: Colors.blue,
            ),
            SwitchListTile(
              title: Text(
                "Telefon",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Kampanyalar ile ilgili arama almak istiyorum",
                style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
              ),
              value: telefon,
              onChanged: (value) {
                setState(() {
                  telefon = value;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: Colors.blue,
            ),
            SwitchListTile(
              title: Text("Sms", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(
                "Kampanyalar ile ilgili SMS almak istiyorum",
                style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
              ),
              value: sms,
              onChanged: (value) {
                setState(() {
                  sms = value;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: Colors.blue,
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 10),
              child: Text(
                "Kampanyalarla ilgili iletişim tercihlerini kapattığında siparişlerin ve üyelik ayarlarınla ilgili e-posta, arama, SMS almaya devam edebilirsin.",
                style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
