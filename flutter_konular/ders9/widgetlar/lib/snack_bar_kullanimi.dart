import 'package:flutter/material.dart';

class SnackBarKullanimi extends StatefulWidget {
  const SnackBarKullanimi({super.key});

  @override
  State<SnackBarKullanimi> createState() => _SnackBarKullanimiState();
}

class _SnackBarKullanimiState extends State<SnackBarKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar Kullanımı"),
        backgroundColor: Color(0xff993060),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Klasik Olan
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Merhaba")));
              },
              child: Text("Varsayılan"),
            ),
            // Snackbar Action
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Silmek istiyor musunuz?"),
                    action: SnackBarAction(
                      label: "Evet",
                      onPressed: () {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text("Silindi!")));
                      },
                    ),
                  ),
                );
              },
              child: Text("Snackbar Action"),
            ),
            // Snackbar Özel
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "İnternet bağlantısı yok!",
                      style: TextStyle(color: Colors.indigoAccent),
                    ),
                    backgroundColor: Colors.white,
                    duration: Duration(seconds: 5),
                    action: SnackBarAction(
                      label: "Tekrar Dene",
                      textColor: Colors.red,
                      onPressed: () {
                        print("Tekrar denendi");
                      },
                    ),
                  ),
                );
              },
              child: Text("Snackbar Özel"),
            ),
          ],
        ),
      ),
    );
  }
}
