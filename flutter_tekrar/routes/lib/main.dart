import 'package:flutter/material.dart';
import 'package:routes/hataSayfasi.dart';
import 'package:routes/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*routes: {
        "/redPage": (context) => RedPage(),
        "/": (context) => YellowPage(),
        "/greenPage": (context) => GreenPage(ad: ),
      },*/
      onGenerateRoute: RouteGenerator.routeGenerator,
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

  7)
    a) Eğer ana rotayı tanımlamak istersek "/" işareti ile tanımlarız:
      -> "/": (context) => RedPage(),
    -------------------------------
    b) Eğer bunu yapıyorsanız artık diğer rotaların başına bu slash işareti hep konulmalıdır:
      -> "/yellowPage": (context) => YellowPage(),
      -> "/greenPage": (context) => GreenPage(),
    -------------------------------
    c) Ayrıca bu kök dizinini kullanacaksanız artık MaterialApp de home parametresini kullanamazsınız ya kaldırın ya da yorum starı yapın:
      -> //home: RedPage(),
    -------------------------------
    d) Eğer bu rotada herhangi bir yanlış yol olursa çalışan özel bir parametre vardır bu da MaterialApp içerisindedir.
    Routes'ın bittiği yerde şunu tanımlıyoruz tabi daha öncesinde bir hata sayfası oluşturduk:
      -> onUnknownRoute: (settings) => MaterialPageRoute(builder: (context) => HataSayfasi()),
  
  8) 
    onGenerateRoute Parametresi
      -> MaterialApp içerisinde bulunur.
      -> "onGenerateRoute:" adında bir parametresi vardır.
      ->Bunun önceki konudan farkı sadece sayfa açma işlemini değil aynı zamanda veri aktramını
        yapmak içinde kullanılabildiği için daha fazla işimize yarar.
      -> MaterialApp'in içini doldurmak istemiyoruz, o yüzden farklı bir dosya oluşturup orada bu işlemi tanımlayıp MaterialApp de çağırırız.

  9) 
    onGenerateRoute ile Kurucu Yardımıyla Veri Gönderme
      a) Sayfaya gidecek olan butonun olduğu sayfada veri oluşturulur.
  
*/
