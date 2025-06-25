import 'package:flutter/material.dart';

class ScrollviewKullanimi extends StatefulWidget {
  const ScrollviewKullanimi({super.key});

  @override
  State<ScrollviewKullanimi> createState() => _ScrollviewKullanimiState();
}

class _ScrollviewKullanimiState extends State<ScrollviewKullanimi> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Scroll View Kullanımı",style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
        foregroundColor: const Color.fromARGB(255, 1, 77, 3),
      ),
      body: Center(
        child: Container(
          height: 700,
          child: SingleChildScrollView(
            //hareket ettirmek istediğimiz şeyi single ile sarmalamalıyız. sadece mavi yeşil containerlara dingle child scroll wiev uygulamak istiyoruz.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 400,
                  color: const Color.fromARGB(255, 1, 77, 3),
                ),
                Container(
                  height: 300,
                  width: 400,
                  color: Colors.blue,
                ),
                Container(
                  height: 300,
                  width: 400,
                  color: const Color.fromARGB(255, 1, 77, 3),
                ),
                Container(
                  height: 300,
                  width: 400,
                  color: Colors.blue,
                ),
                Container(
                  height: 300,
                  width: 400,
                  color: const Color.fromARGB(255, 1, 77, 3),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}