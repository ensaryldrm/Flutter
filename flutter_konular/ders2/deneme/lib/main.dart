import 'package:flutter/material.dart';

void main() {
  runApp(const MyProject());
}
class MyProject extends StatelessWidget {
  const MyProject({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //Debug yazısının yazmasının sebebi material app eklemiş olmamız.
      debugShowCheckedModeBanner: false,
      home: MyExamples(
      ),
    );
  }
}
class MyExamples extends StatelessWidget {
  const MyExamples({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Çalışma 2",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        //centerTitle: false,
        backgroundColor: Colors.orange,        
        foregroundColor: Colors.black,
      ),
      body: Example12(),
    );
  }
}
class Example3 extends StatelessWidget {
  const Example3({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.blue,
      child: Image.asset( // Resim containerdan büyükse height ve width resmi küçültmeye yarar.
        "images/ironman.jpg",//Fotoğrafın yolunu eklediğimiz satır.
        //fit: BoxFit.contain, // 
        //fit: BoxFit.cover, //Sayfaya dolduruyor görseli.
      ),
    );
  }
}
class Example4 extends StatelessWidget {
  const Example4({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> myImages=[
      "ironman.jpg",
      "hulk.jpg",
      "orumcek.jpeg",
      "strange.png",
    ];
    final imageFolder ="images/";
    return SingleChildScrollView(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center, // dikeyde ortalamak
        //mainAxisAlignment: MainAxisAlignment.center,// yatayda ortalama
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  height: 180,
                  child: Image.asset(
                    imageFolder /*"images/"*/+myImages[0],//listeye eklediğimiz fotoğrafları indexiyle çağırdı.
                    //fit: BoxFit.cover,
                    ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.red,
          ),
                  Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  height: 180,
                  child: Image.asset(
                    imageFolder /*"images/"*/+myImages[1],//listeye eklediğimiz fotoğrafları indexiyle çağırdı.
                    //fit: BoxFit.cover,
                    ),
                ),
              ),
            ],
          ),
          Divider(color: Colors.red,),
                  Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  height: 180,
                  child: Image.asset(
                    imageFolder /*"images/"*/+myImages[2],//listeye eklediğimiz fotoğrafları indexiyle çağırdı.
                    //fit: BoxFit.cover,
                    ),
                ),
              ),
            ],
          ),
          Divider(color: Colors.red,),       
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  height: 180,
                  child: Image.asset(
                    imageFolder /*"images/"*/+myImages[3],//listeye eklediğimiz fotoğrafları indexiyle çağırdı.
                    //fit: BoxFit.cover,
                    ),
                ),
              ),
            ],
          ),
          Divider(color: Colors.red,),
                  Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 12),
                height: 180,
                child: Image.asset(
                  imageFolder /*"images/"*/+myImages[0],//listeye eklediğimiz fotoğrafları indexiyle çağırdı.
                  //fit: BoxFit.cover,
                  ),
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }
}
class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0),
          child: Text("Örnek 1"),
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                height: 180,
                child: Text("Ben %30"),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                alignment: Alignment.center,
                color: Colors.teal,
                height: 180,
                child: Text("Ben %70"),
              ),
            )
          ],
        ),
        Divider( // containerlar arasını ayırmak için kullanılan çizgi.
          color: Colors.red,
          thickness: 2,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                height: 200,
                color: Colors.purple,
                child: Text("Ben %20"),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                height: 200,
                color: Colors.pink,
                child: Text("Ben %30"),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                alignment: Alignment.center,
                height: 200,
                color: Colors.yellow,
                child: Text("Ben %50"),
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.red,
          thickness: 2,
        ),

      ],
    );
  }
}
class Example2 extends StatelessWidget {
  const Example2({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Başlık bölüm başlangıç.
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Align(
                child: Text(": Telefon listesi :",style: TextStyle(color: const Color.fromARGB(255, 107, 9, 2),fontSize: 35,)),
              ),
            ),
            Divider(
            color: const Color.fromARGB(255, 12, 83, 141),
            thickness: 3,
          ),
        ],
        ),
        //Başlık bölüm bitiş.
        //İçerik başlangıç. 
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 12.0),
              child: Column(
                children: [
                  MyCard(name: "Begüm Toy",firstIcon:Icons.abc,lastIcon: Icons.abc_rounded,),
                  MyCard(name: "Bekircan Ayoğlu", firstIcon: Icons.access_alarm_outlined, lastIcon: Icons.access_alarms_sharp),
                  MyCard(name: "Beyza Kondu", firstIcon: Icons.accessible_forward_sharp, lastIcon: Icons.accessible_outlined),
                  MyCard(name: "Şevval Ökten", firstIcon: Icons.access_time_filled_sharp, lastIcon: Icons.access_time_filled_rounded),
                  MyCard(name: "Çağatay Ulusoy", firstIcon: Icons.adb, lastIcon: Icons.adb_rounded),
                  MyCard(name: "Hande Yener", firstIcon: Icons.add_card_outlined, lastIcon: Icons.add_card_sharp),


                ],
              ),
            ),
          ),
        ),
        //İçerik bitiş.

      ],
    );
  }
}
class MyCard extends StatelessWidget {
  final String name;
  final IconData firstIcon;
  final IconData lastIcon;

  const MyCard({
    required this.name,
    required this.firstIcon,
    required this.lastIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height:130,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  border: Border.all(color:const Color.fromARGB(255, 107, 9, 2),width: 5),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(9), //İçerideki insan ikonunun yuvarlak içindeki konumunu ayarladık.
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Icon(firstIcon,
                      color: const Color.fromARGB(255, 107, 9, 2),
                        size: 56,
                      ),
                    ),
                    Text(name,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    ),
                    Icon(lastIcon,
                    color: Colors.white,
                    size: 36,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      SizedBox(
        height: 10,
      )
      ],
    );
  }
}
class Example5 extends StatelessWidget {
  const Example5({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Colors.red,
              height: 150,
              width: 200,
              child: Image.network("https://cdn.myanimelist.net/s/common/uploaded_files/1450839009-f9bf204c664b0498f9d288b9857f071d.jpeg"),
            ),
          ],
        ),
          Row(
          children: [
            Container(
              color: Colors.white,
              height: 150,
              width: 200,
              child: Image.network("https://img1.wallspic.com/crops/8/8/8/0/7/170888/170888-anime-house-window-plant-building-3840x2160.jpg"),//Sağ tık resim adresini kodyala.
            ),
          ],
        )
      ],
    );
  }
}
class Example6 extends StatelessWidget {
  const Example6({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 15),
                height: 130,
                width: 155,
                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/1200px-Instagram_icon.png"),
              ),
            )
          ],
        ),
        SizedBox(height: 30,),
        Container(
          alignment: Alignment.center,
          height: 65,
          width: 350,
          decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey,width: 3),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Text("Kullanıcı adı",style: TextStyle(color: Colors.grey, fontSize: 20,fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 15,),
        Container(
          alignment: Alignment.center,
          height: 65,
          width: 350,
          decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey,width: 3),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
            child: Text("Şife",style: TextStyle(color: Colors.grey, fontSize: 20,fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 15,),
        Container(
          alignment: Alignment.center,
          height: 50,
          width: 350,
          decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: const Color.fromARGB(255, 62, 145, 212),width: 3),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
            child: Text("Giriş Yap",style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 15,),
        Text("Şifreni mi unuttun?",style: TextStyle(fontWeight:FontWeight.bold )),
        SizedBox(height: 15,),
        Divider(color: Colors.grey),
        SizedBox(height: 20,),
        Flexible(
          child: Container(
            alignment: Alignment.center,
            height: 80,
            decoration: BoxDecoration(
            color: Colors.white,
            border: Border.fromBorderSide(BorderSide(color: Colors.grey,width: 1)),
            borderRadius: BorderRadius.circular(5)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hesabın yok mu?"),
                SizedBox(width: 5),
                Text("Kaydol",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
              ],
            ),
          ), 
        ),
        SizedBox(height: 30,),
        Text("Uygulamayı indir."),
        SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 65,
              width: 200,
              decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.black,width: 3),
              borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Expanded(
                  flex: 4,
                   child: Container(
                    child: Icon(Icons.apple,color: Colors.white,size: 40,),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.black,width: 3),
                      borderRadius: BorderRadius.circular(15),
                      ),
                    height: 65
                    ),
                    ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("App Store'dan",style: TextStyle(color: Colors.white),),
                          Text("İndirin",style: TextStyle(color: Colors.white),)
                      ],
                      ),
                      decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.black,width: 3),
                      borderRadius: BorderRadius.circular(15),
                      ),
                      height: 65,
                      ),
                      ) 
                ],
              ),
            ), 
            SizedBox(width: 10,),
            Container(
              height: 65,
              width: 200,
              decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.black,width: 3),
              borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Expanded(
                  flex: 4,
                   child: Container(
                    child: Icon(Icons.play_arrow ,color: Colors.white,size: 40,),
                    decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.black,width: 3),
                    borderRadius: BorderRadius.circular(15),
                    ),
                    height: 65
                    ),
                    ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Google Play",style: TextStyle(color: Colors.white),),
                          Text("'DEN ALIN",style: TextStyle(color: Colors.white),)
                      ],
                      ),
                      decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.black,width: 3),
                      borderRadius: BorderRadius.circular(15),
                      ),
                      height: 65,
                      ),
                      ) 
                ],
              ),
            ), 
          ],
        )
      ],
    ) ;
  }
}
class Example7 extends StatelessWidget {
  const Example7({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Row(children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: 300,
                  child: Image.network("https://image.hurimg.com/i/hurriyet/75/0x0/5f5255dbd3806c209020ff2f.jpg",fit: BoxFit.cover,),
                ),
              ),
            ],),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 80,
                    color: Colors.orange,
                    child: Center(child: MyComment(textColor: Colors.black, textContent: "Beğen", textSize: 25)),
                    ),
                  ),
                Expanded(
                  child: Container(
                    height: 50,
                    width: 80,
                    color: Colors.red,
                    child: Center(child: MyComment(textColor: Colors.black, textContent: "Yorum Yap", textSize: 25)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    MyComment(textColor: Colors.red, textContent: "Waffle", textSize: 35),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row( //Aynı satırda birini sola diğerini sağa sabitleme
                  children: [
                    Expanded(
                      flex: 8,
                      child:Container(
                        height: 36,
                        child:  MyComment(textColor: Colors.black, textContent: "Gluten içerikli", textSize: 15),
                      )
                      ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 36,
                        child: MyComment(textColor: Colors.black, textContent: "8 Ağustos", textSize: 15),
                      )
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: MyComment(textColor: Colors.black, textContent: "Waffle hamuru yapmak için; öncelikle yumurta ve şekeri iyice köpürünceye kadar çırpalım.Süt, sıvı yağ, tuz, kabartma tozu, vanilya ve unu ekleyip tekrar çırpalım. Waffle hamur hazır, pişirme işlemine geçebiliriz.Waffle makinesini ısıtıp 1 kepçe kadar hamuru makineye boşaltalım. Kapağını kapatıp pişmeye bırakalım. Pişirme işlemi kullandığınız waffle makinesine göre farklılık gösterebilir. Burada makinenizin kullanım kılavuzunu dikkate almanızı öneririm.Waffle hamuru pişerken meyvelerimizi dilimleyelim. Mevsimine göre hangi meyveyi kullanacağınızı kendiniz seçebilirsiniz. Ben en çok tercih edilen çilek muz ve kivi ile hazırlayacağım.Pişen waffle hamuru üzerine önce çikolatamızı sürelim. Üzerine istediğimiz meyveleri dizelim. Ardından fındık kırıkları ve fıstıkla süsleyelim. Waffle servise hazır. Şimdiden afiyet olsun :)Waffle yapmak için kullandığınız waffle makinesi de çok önemli, iyi bir makine ile gerçekten iyi sonuçlar alırsınız. Makineniz yoksa teflon tavada pankek yapar gibi aynı hamuru pişirebilirsiniz, veya tost makinesinde yapabilirsiniz. Şekli farklı olacaktır ama lezzet olarak çok fark olacağını sanmıyorum. Waffle üzerine bal, Hindistan cevizi, bonibon, damla çikolatası, fındık kreması, kesatne şekeri, meyve şekerlemeleri, reçel, dondurma… aklınıza ne gelirse kullanabilirsiniz. Şimdiden herkese afiyet olsun :)", textSize: 15),
              ),
              SizedBox(height: 30,)
            ],
          )
        ],
      ),
    );
  }
}
class MyComment extends StatelessWidget {
  final Color textColor;
  final double textSize;
  final String textContent;


  const MyComment(
   {this.textColor=Colors.black,
   this.textContent="",
   this.textSize=15,
  });

  @override
  Widget build(BuildContext context) {
    return Text(textContent,style: TextStyle(fontSize: textSize,color: textColor),);
  }
}
class Example8 extends StatelessWidget {
  const Example8({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            print("Tıklandı");
          }, child: Text("Tıkla"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 59),
            shadowColor: Colors.black,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              side: BorderSide(color: Colors.white,width: 5)
            )
          ),
          )
        ],
      ),
    );
  }
}

//TextButton
class Example9 extends StatelessWidget {
  const Example9({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: (){}, child: Text("Text button"),
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue,
            backgroundColor: Colors.amber
          )
          ),
        ],
      ),
    );
  }
}

//Icon Button
class Example10 extends StatelessWidget {
  const Example10({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(onPressed: (){}, icon: Icon(Icons.dangerous,size: 40,)),
    );
  }
}

class Example11 extends StatelessWidget {
  const Example11({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              //controller: İçindeki veriyi değişkene aktarmak için kullanılır.
              style: TextStyle(color: Colors.amber), //İçine yazılacak yazıyla ilgilidir.
              obscureText: true, //Şifreleme yapar.
              keyboardType: TextInputType.name, //Klavye türü
              maxLength: 11, // Girilecek max karakter sayısı.
              decoration: InputDecoration(
                //hintText: "Email", hintStyle: TextStyle(color: Colors.amber)//Bilgilendirme yazısı.
                label: Text("Ad Soyad"),// üstte kalan bilgilendirme yazısı.
                labelStyle: TextStyle(color: Colors.red,fontSize: 20),
                filled: true, //arka plan rengine izin verir.
                fillColor: Colors.blueAccent,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal,width: 3),
                  borderRadius: BorderRadius.circular(19)
                )
              ),
            ),
            Text("BEGÜM TOY",style: TextStyle(
              color: Colors.red,
              fontSize: 30,
              fontWeight: FontWeight.w300,
              backgroundColor: Colors.blue,
              //letterSpacing: 10, //Harfler arası boşluk.
              //wordSpacing: 18, //Kelimeler arası boşluk.
            ),
          ),
          ],
        ),
      ),
    );
  }
}
//Circle Avatar
class Example12 extends StatelessWidget {
  const Example12({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: CircleAvatar( 
              //Backgraound avatardır yazı yazılabilir üstüne. 
              //katmanlar : color-resim-child.
              radius: 100,
              /*
              child:Text("Begüm",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold)),
              backgroundColor: Colors.amber,
              */

              //Image.asset() ve Image.network() birer widget
              //Eğer size imageprovider bekliyorsa NetworkImage ya da AssetImage koymalısın. 
              
              backgroundImage: AssetImage("images/strange.png"),

            ),

          )
        ],
      ),
    );
  }
}