import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

/*
.Flutter 2015 yıkında google tarafından duyuruldu.
.Cross bir plotformdur.(android ve ios).
.Tasarım ile cod aynı ekranda yapılır.
.Dart programlama dilini kullanır.
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Proje dizinleri: 
lib: library Dart dosyalarının oluşturulduğu ana klasör.
pubspec.yaml: Resim font ekleyebildiğimiz ayrıca harici kütüphaneleri tanımladığımız uygulama ile ilgili tüm ayarların olduğu klasördür.
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Bizim iki ana widgets ımız vardır:

1)StatelessWidget

Eğer bir sayfada etkileşim olmayacaksa bu widget kullanılır.
Widget döndürmesi gerekiyor.

return MateraiApp(
  debugShowCheckedModeBanner: false, //kenardaki debug yazısı gider.
  home: Scaffold( 
    appBar: AppBar( // Ekran üstüne appBar ekler
      backgroundColor: Colors.red, //AppBar rengini değiştirir.
      title: Text("Softito Dersleri"), //AppBara yazı yazdırır.
      foregroundColor: Colors.white, //Title ın rengini belirler.
      centerTitle: false, // Title ı soldan başlatır.
    ), //AppBar
    body: Text("Merhaba Flutter"), // beyaz kısma yazı yazdırır.
    body: Container(
    child: Text("Begüm"), //Kutu içine eklenene child deniyor. Yani Container parent.
    color: Colors.indigo,
    width: 200,
    height: 200,
    margin: EdgeInsets.all(20), //Ortalaması için. Her tarafından aynı miktarda ortalar.
    margin: EdgeInsets.symmetric(horizontal: 25,vertical: 2), // Symmetric olan manuel dikey ve yatay manuel olarak konumlandırmamızı sağlar. ikisini yazma zorunluluğu yok.
    margin: EdgeInsets.only(top: 50,left: 36), //Sadece belli konumları kullanmak istiyorsak.
    padding: EdgeInsets.all(36), // İçerideki textin konumlandırılması için kullanılır.(margin gibi çeşitleri aynı)
    decoration: BoxDecoration(
      color: Colors.lightGreen, //Box rengini artık burada tanımlıyoruz.
      border: Border.all(color: Colors.red,width: 12) //box a çerçeve yaptık. Çerçeveye renk ve kalınlık ekledik.
      border: Border(top: BorderSide(color: Colors.yellow,width: 10))// Sadece kutucuk üzerine çerçeve ekledik.
      borderRadius: BorderRadius.all(Radius.circular(50)), // çerçeve kenarlarını yumuşatır. (1-100 arası değer alır.)
      borderRadius: BorderRadius.only(bottomRight: Radius.circular(23),topLeft: Radius.circular(23)), //köşeleri tek tek yumuşatmak.
      boxShadow: [BoxShadow(color: const Color.fromARGB(255, 11, 118, 175),offset: Offset(20, -20),blurRadius: 26,)], //Gölge eklemek.
    ), //BoxDecoration
    ), //Container  //kutu oluşturmak için kullanılır. (çerceve)
  ), //Scaffold //Evin temeli. Birden fazla olabilir.
  ); //MaterialApp //Uygulamanın inşası üzerine yapılır.(Arsası,bir kere kullanılır.)

  Container a tıklayınca yanda çıkan ampulde WRAP WİTH CENTER seçersek container ı ortalar.
   body: Center 
  içerisine alır. Yaptığımız işlemi geri almak için CENTER üzerine gelip sarı ampulden REMOVE THİS WİDGET diyoruz.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
body: Container(
  color: Colors.amber, // satırın bu renkle kapla.
  child: Row(
    children: [
      Container( // Container karesi
        color: Colors.blue,
        width: 100,
        height: 100,
        child: Text("Container 1"),
      ),
      Container( // Container karesi
        color: Colors.green,
        height: 100,
        width: 100,
        child: Text("Container 2"),
      ),
    ],
  ),
)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------- HATAYI ÇOĞUNLUKLA BU İKİSİNDE ALIIRZ. ÇÜNKÜ TARLA SAHİPLERİDİR.----------

child: Row( // Yatay
  crossAxisAlignment: CrossAxisAlignment.end,.start,.strecht,.center // kareler yapışık konumlandırma.
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,// Arasında boşluklu kareleri ortala 
  children: [ //"Width ler yorum satırına alınır."


child: Column( //Dikey
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.end,.start,.strecht,.center // kareler yapışık konumlandırma.
  children: [
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

home:Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.indigo,
  ),
  body: Container(
    color: Colors.amber,
    width: 500,
    height: 500,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: Colors.blue,
          width: 100,
          height: 100,
          child: Text("Container 1"),
        ),
        Container(
          color: Colors.green,
          height: 100,
          width: 100,
          child: Text("Container 2"),
        ),
        Container(
          color: Colors.red,
          height: 100,
          width: 100,
          child: Text("Container 3"),
        ),
      ],
    ),
  )
)
);
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
body: Stack(
  children: [
    Container(
  height: 350,
  width: 350,
  color: Colors.orange,
    ),
    Container(
  height: 250,
  width: 250,
  color: Colors.red,
    ),
    Container(
    height: 150,
  width: 150,
  color: Colors.blue,
    )
  ],
),
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Align Örnek 1:
Container(
  height: 160,
  width: 160,
  color: const Color.fromARGB(255, 238, 166, 190),
  child: Align(
    alignment: Alignment.bottomRight,
    child: Text("Yazı"),
  ),
),
-Align widget içine aldığı widget ı parent  ın boyutları dahilinde konumlandırır.
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Align Örnek 2:
Align(
  alignment: Alignment.topRight,
  child: Container(
    height: 160,
    width: 160,
    color: const Color.fromARGB(255, 238, 166, 190),
    child: Text("Yazı"),
  ),
),
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Align Örnek 3:
Container(
  width: 500,
  height: 500,
  color: const Color.fromARGB(255, 223, 130, 161),
  child: Align(
    alignment: Alignment.center,
    child: Container(
      height: 160,
      width: 160,
      color: const Color.fromARGB(255, 238, 166, 190),
      child: Text("Yazı"),
      alignment: Alignment.center,
    ),
  ),
),
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Align Örnek 4:
  Align(
    alignment: Alignment.bottomLeft,
    child: Container(
      width: 500,
      height: 500,
      color: const Color.fromARGB(255, 223, 130, 161),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 160,
          width: 160,
          color: const Color.fromARGB(255, 238, 166, 190),
          child: Text("Yazı"),
          alignment: Alignment.center,
        ),
      ),
    ),
  ),
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Align Örnek 5:
Container(
  height: 300,
  width: 300,
  color: const Color.fromARGB(255, 238, 166, 190),
  child: Column(
    children: [
      Container(
        color: const Color.fromARGB(255, 238, 166, 190),
        height: 150,
        width: 300,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Text("Yazı 1",style: TextStyle(color: const Color.fromARGB(255, 119, 8, 0)))
          )
        ),
      Container(
        height: 150,
        width: 300,
        color: const Color.fromARGB(255, 119, 8, 0),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text("Yazı 2",style: TextStyle(color: const Color.fromARGB(255, 238, 166, 190)))
          )
        ),
    ],
  ),
)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SixedBox: Özellikleri arasında height ve width olmayan widgetlara boyut özelliği kazandırır.
   SizedBox(width: 50), 
//Arasında mesafe olmasını istediğimiz nesnelerin arasına girip SizeBox ekliyoruz. width(Row),height(Column) değeri yazıyoruz.
Bir widgetin boyutunu tekrar boyutlandırmak, boyut katmak için
-----------
Column(
  children: [
    Row(
      children: [
      SizedBox(width:30),
      Container(
        height: 160,
        width: 160,
        color: const Color.fromARGB(255, 238, 166, 190),
      ),
      SizedBox(width: 50), //Arasında mesafe olmasını istediğimiz nesnelerin arasına girip sizebox ekliyouruz. width,height değeri yazarız.
      Container(
        height: 160,
        width: 160,
        color: const Color.fromARGB(255, 238, 166, 190),
      ),
    ],),
    SizedBox(height: 50),
    Container(
      height: 160,
      width: 160,
      color: const Color.fromARGB(255, 119, 8, 0),
    )
  ],
)
------------------
Center( //Rowu centerla sardık. Containerlar yatayda centera yerleşti.
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center, //Dikeyde ortalamasını (centera yerleştirdi) sağladı.
    children: [
      Container(
        height: 100,
        width: 100,
        color: const Color.fromARGB(255, 238, 166, 190),
      ),
      SizedBox( //Ortadaki containerı sizeboxla sardık.
      height: 200,
        child: Container(
          height: 100,
          width: 100,
          color: const Color.fromARGB(255, 119, 8, 0),
        ),
      ),
      Container(
        height: 100,
        width: 100,
        color: const Color.fromARGB(255, 238, 166, 190),
      )
    ],
  ),
)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Spacer(), // altındakileri nesneleri sayfanın en altına gönderir.
----------------
Column(
  children: [
    Container(
      height: 140,
      width: 140,
      color: const Color.fromARGB(255, 238, 166, 190),
    ),
    Spacer(), // altındakileri sayfanın en altına gönderir.
    Container(
      height: 100,
      width: 100,
      color: const Color.fromARGB(255, 236, 115, 155),
    ),
    Container(
      height: 120,
      width: 120,
      color: const Color.fromARGB(255, 232, 83, 132),
    ),
  ],
)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Padding //Margin ve paddingi olmayan nesnelere padding ayarı yapmak için kullanıyoruz.
----------
Padding(
    padding: const EdgeInsets.all(8),
    child: Text("Merhaba"),
  ),
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Expanded: Eğer bizim widgetlarımız row ya da column içindeyse taşma hatası ile karşılaşabiliriz. (overflow) Bu hatadan kurtulmak için bu widget yöntemlerinden biridir. Kullanım 
olarak mutlaka row içinde tüm elemanlar bu widget ile sarmalanmalıdır.
-Flex verilmezse eşit verilirse verilen oranlara göre doldurur.
-Row ve Column elemanlarında kullanılır.
-Boşluk kalmasını istemiyorsak.
-Width önemi yoktur. Boşluğu her türlü doldurur.
----------
Row(
  children: [
    Expanded(
      flex: 3,
      child: Container(
        width: 150,
        height: 150,
        color: Colors.red,
      ),
    ),
    Expanded(
      flex: 8,
      child: Container(
        height: 150,
        width: 150,
        color: Colors.blue,
      ),
    )
  ],
)
------------
Column(
  crossAxisAlignment: CrossAxisAlignment.stretch, // bütün sayfaya streç ettik (doldurduk). 
  children: [
    Expanded(
      flex: 3, // alttakiyle topla, buradaki7 toplam kadarını bu renkle kapla.
      child: Container(
        color: Colors.red,
        width:160,
        height: 160,
      ),
    ),
    Expanded( //flex yazılmazsa 1 kabul edilir. 
      child: Container(
        width: 160,
        height: 160,
        color: Colors.orange,
      ),
    )
  ],
)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Flexible: Boşluğu doldurmasın ama overflow hatası vermesin diye eşit dolduruyor. Oranlayarak yapıyor.
-Flexible kullanılıcaksa width kullanma. Kullanırsan width daha ağır basar ve oraya göre değerlendirir.
--------
Row(
  children: [
    Container(
      height: 200,
      width: 175,
      color: Colors.red,
    ),
    SizedBox(width: 8,), //Flexible la birlikte hata vermeden aralarına boşluk ekler.
    Flexible(
      child: Container(
        height: 200,
        width: 175,
        color: Colors.black,
      ),
    ),
  ],
)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


*/
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Ornek(
      )
      );
  }
}
class Ornek extends StatelessWidget {
  const Ornek({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aling Example"),
        centerTitle: true, //Başlığı ortalamak için kullanılır. İOS da otomatik ortalar,androidde bu satır zorunludur. Programın kullanılabirliği için gereklidir.
        backgroundColor: const Color.fromARGB(255, 119, 8, 0),
        foregroundColor: const Color.fromARGB(255, 238, 166, 190),
      ),
      body: Column(
        children: [
          PembeKare(),
          SizedBox(height: 15,),
          KirmiziKare(),
          SizedBox(height: 15,),
          MyText("Merhaba dostum"),
        ],
      )
    );
  }
}
class PembeKare extends StatelessWidget {
  const PembeKare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 238, 166, 190),
      height: 100,
      width: 100,
    );
  }
}
class KirmiziKare extends StatelessWidget {
  const KirmiziKare({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 119, 8, 0),
      height: 120,
      width: 120,
    );
  }
}
class MyText extends StatelessWidget {
  final String yazi;
  MyText(this.yazi);
  @override
  Widget build(BuildContext context) {
    return Text(yazi);
  }
}
/*
  Scaffold Homework() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Örnek 1"),
        titleTextStyle: TextStyle(
          fontSize: 35, //Yazı boyutunu değiştirdik.
          fontWeight: FontWeight.bold, //Font ayarladık.
        ),
        foregroundColor: Colors.white, //yazının rengini ayarladık.
      ),
      body: SingleChildScrollView( // Kaydırılabilir ekran yaptık.
        child: Column( // Dikey kutuları ayarladık.
          children: [
            Container(
               margin: EdgeInsets.symmetric(vertical: 15),
              child: Row( //Yatay kutuları ayarladık.
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container( 
                    child: Text("Sol alt yazı"),
                    color: Colors.green,
                    height: 120,
                    width: 180,
                    padding: EdgeInsets.only(left: 12,bottom: 12),
                    alignment: Alignment.bottomLeft
                  ),
                  Container(
                    child: Text("Sağ üst yazı"),
                    color: Colors.red,
                    height: 120,
                    width: 180,
                    padding: EdgeInsets.only(bottom: 12,right: 12),
                    alignment: Alignment.topRight,
                  )
                ],
              ),
            ),
            Container(
              child: Text("Yazı orta top border"),
              alignment: Alignment.center, // Yazının centerda olmasını sağladık.
              height: 120,
              width: 180,
              decoration: BoxDecoration(
              color: Colors.blue,
              border: Border(top: BorderSide(color: Colors.yellow,width: 10))// Sadece kutucuk üzerine çerçeve ekledik.
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text("Üst alt border yazı üst "),
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.indigo,
                border: Border(top: BorderSide(color: Colors.red,width: 10),bottom: BorderSide(color: Colors.red,width: 10)) //istediğim kenarlara çerçeve ekledim.
              ),
            ),
            Container(
              child: Text("Çerçeveler renkli"),
              height: 120,
              width: 180,
              decoration: BoxDecoration(
              color: Colors.blue,
              border: Border(top: BorderSide(color: Colors.yellow,width: 10),bottom: BorderSide(color: Colors.green,width: 10),right: BorderSide(color: Colors.brown,width: 10),left: BorderSide(color: Colors.black,width: 10))
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child:Text("Çerçeve kalın ve oval"),
              height: 120,
              width: 180,
              decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.red,width: 18),
              borderRadius: BorderRadius.all(Radius.circular(20))
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text("Çerçeve ve belli köşe oval"),
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.brown,width: 10),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topLeft: Radius.circular(20)) // İstediğimiz kenarları yumuşattık.
              ),
            )
          ],
        ),
      ),
    );
  }

  Scaffold LastExample() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
              child: Text("Container yan 1"),
              color: Colors.yellow,
              height: 130,
              width: 130,
              ),
              Container(
                child: Text("Container yan 2"),
              color: Colors.green,
                height: 130,
                width: 130,
              ),
              Container(
                child: Text("Container yan 3"),
              color: Colors.blue,
                height: 130,
                width: 130,
              )
            ],
          ),
            Container(
            child: Text("Container dik 1"),
            color: Colors.red,
            height: 130,
            width: 130,
            ),
          Container(
            child: Text("Container dil 2"),
            color: Colors.grey,
            height: 130,
            width: 130,
            ),
            Row(children: [
              Container(
                color: Colors.pink,
                child: Text("yatay 1 Container"),
                height: 130,
                width: 130,
              )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Yatay container 2"),
                  color: Colors.purple,
                  height: 130,
                  width: 130,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Text("Yatay container 3"),
                  color: Colors.orange,
                  height: 130,
                  width: 130,
                )
              ],
            )
        ],
      )
    );
  }

  Scaffold MyThirdExample() {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Work"),
        backgroundColor: Colors.orange.shade300,
        foregroundColor: Colors.teal,
      ),
      body: Container(
        width: 400,
        height: 350,
        margin: EdgeInsets.all(36),
        child: Icon(Icons.person,size: 89,color:Colors.green,),
        decoration: BoxDecoration(
          color: Colors.brown,
          border: Border.all(color: Colors.cyan,width: 13),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(23),bottomRight: Radius.circular(23)),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade400,blurRadius: 25,offset: Offset(14, 28)),
          ]
        ),
      ),
    );
  }

  Scaffold MySecondExample() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("My First Work"),
        foregroundColor: Colors.white,
      ),
      body: Container(
        child: Text("ADANA"),
        width: 400,
        height: 350,
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(125),
        decoration: BoxDecoration(
        color: Colors.orange,
        border: Border.all(color: Colors.green,width: 12),
        borderRadius: BorderRadius.all(Radius.circular(50)),
        boxShadow: [BoxShadow(color: Colors.orange,offset: Offset(20, -20),blurRadius: 20,)],
        ),
      ),
    );
  }

  Scaffold MyFirstExample() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Softito Dersleri"),
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Container(
      child: Text("Begüm Toy"),
      width: 200,
      height: 200,
      margin: EdgeInsets.only(top: 50,left: 36),
      padding: EdgeInsets.all(36),
      decoration: BoxDecoration(
      color:const Color.fromARGB(255, 11, 118, 175),
      border: Border.all(color: Colors.red,width: 7),
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(23),
        topLeft: Radius.circular(23)),
        boxShadow: [BoxShadow(color: const Color.fromARGB(255, 11, 118, 175),offset: Offset(20, -20),blurRadius: 26,)],
      ),
      ),
    );
  }
*/