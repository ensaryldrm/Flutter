import 'package:flutter/material.dart';

class VisibilityKullanimi extends StatefulWidget {
  const VisibilityKullanimi({super.key});

  @override
  State<VisibilityKullanimi> createState() => _VisibilityKullanimiState();
}

class _VisibilityKullanimiState extends State<VisibilityKullanimi> {
  bool isVisibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yeni Konular"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.amber.shade900,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 300,
              child: Visibility(
                visible: isVisibility,
                child: Text(
                  "Selam Herkese!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisibility = !isVisibility;
                });
              },
              child: isVisibility == true
                  ? Text("YAZIYI YOK ET")
                  : Text("YAZIYI GERİ GETİR"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                backgroundColor: isVisibility == true
                    ? Colors.red
                    : Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
