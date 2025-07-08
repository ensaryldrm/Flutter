import 'package:flutter/material.dart';
import 'package:routes/greenpage.dart';
import 'package:routes/hataSayfasi.dart';
import 'package:routes/redpage.dart';
import 'package:routes/yellowpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/redPage": (context) => RedPage(),
        "/": (context) => YellowPage(),
        "/greenPage": (context) => GreenPage(),
      },
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => HataSayfasi()),
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

/*
  1) MaterialApp projenin bel kemiği olduğunu daha önce söylemiştik. Bunu ispatlamanın en güzel örneği rotalardır. MaterialPageRoute sınıfı MaterialApp olmadan çalışmaz.

  2) Ben rotalara niye ihtiyaç duyarım? Ben her sayfa geçişinde MaterialPageRoute sınıfını çağırıyor muyum? Bu performans açısından iyi değil. Bu yüzden rotaları kullanmak daha performanslıdır.

  3) Rota kullanmanın iki yolu vardır. Bir tanesi standart olan diğeri gelişmiş olan.

  4) Aralarındaki fark biri sadece sayfa geçişini sağlar.

  5) Diğeri ise hem sayfa geçişini hemde veri aktarımını sağlar ama daha karmaşıktır.

  6) Rotaları tanımlamak için MaterialApp içerisindeki routes parametresi kullanılır ve bizden bir map ister içine rota ister.
*/
