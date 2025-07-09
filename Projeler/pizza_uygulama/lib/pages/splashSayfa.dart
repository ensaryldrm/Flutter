import 'package:flutter/material.dart';

class SplashSayfa extends StatefulWidget {
  const SplashSayfa({super.key});

  @override
  State<SplashSayfa> createState() => _SplashSayfaState();
}

class _SplashSayfaState extends State<SplashSayfa> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed("/AnaSayfa");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 106,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("resimler/pizza_icon.png"),
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
                    height: 48,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("resimler/ovenly.png"),
                      ),
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
