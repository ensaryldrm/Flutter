import 'package:flutter/material.dart';
import 'package:sayac_uygulamasi/ikinci_sayac_widget.dart';
import 'package:sayac_uygulamasi/sayac_widget.dart';

class AnaSayfa extends StatelessWidget {
  AnaSayfa({super.key});

  final SayacWidgetKey = GlobalKey<SayacWidgetState>();
  final IkinciSayacWidgetKey = GlobalKey<IkinciSayacWidgetState>();

  @override
  Widget build(BuildContext context) {
    debugPrint("Build çalıştı!");

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ana Sayfa",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: Color.fromARGB(255, 152, 176, 215),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Butona basılma miktarı", style: TextStyle(fontSize: 20)),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SayacWidget(key: SayacWidgetKey),
                SizedBox(width: 10),
                IkinciSayacWidget(key: IkinciSayacWidgetKey),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          SayacWidgetKey.currentState!.sayacArttir();
          IkinciSayacWidgetKey.currentState!.IkinciSayacArttir();
        },
      ),
    );
  }
}
