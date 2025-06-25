import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(
      ),
    );
  }
}
class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Sayfa1();
  }
}

class Sayfa1 extends StatelessWidget {
  const Sayfa1({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController tf=TextEditingController();
    TextEditingController tf1=TextEditingController();
    TextEditingController tf2=TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa 1"),
        foregroundColor: Colors.amber,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tf,
                decoration: InputDecoration(
                  label: Text("Ad Soyad"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 193, 162, 213),width: 2),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedBorder:OutlineInputBorder(//Basıldıktan sonra gözüken çerçeve rengi
                  borderSide: BorderSide(color: const Color.fromARGB(255, 193, 162, 213),width: 2),
                  borderRadius: BorderRadius.circular(30)
                ),
                prefixIcon: Icon(Icons.face_2_rounded)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tf1,
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Memleket",),
                    enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 193, 162, 213),width: 2),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedBorder:OutlineInputBorder(//Basıldıktan sonra gözüken çerçeve rengi
                    borderSide: BorderSide(color: const Color.fromARGB(255, 193, 162, 213),width: 2),
                    borderRadius: BorderRadius.circular(30)
                ),
                prefixIcon: Icon(Icons.location_city,)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tf2,
                maxLength: 4,
                decoration: InputDecoration(
                  label: Text("Doğum Yılı"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 193, 162, 213),width: 2),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  focusedBorder:OutlineInputBorder(//Basıldıktan sonra gözüken çerçeve rengi
                    borderSide: BorderSide(color: const Color.fromARGB(255, 193, 162, 213),width: 2),
                    borderRadius: BorderRadius.circular(30)
                ), 
                prefixIcon: Icon(Icons.calendar_month) // icon ekledik
              ),
              ),
            ),
            ElevatedButton(onPressed: (){
              String name=tf.text;
              String city=tf1.text;
              String date=tf2.text;
              int age = int.parse(date);
              int myAge = DateTime.now().year - age;
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sayfa2(name,city,myAge)));
            }, child: Text("Sayfa 2 ye git"))
          ],
        ),
      ),
    );
  }
}
class Sayfa2 extends StatelessWidget {
    final String name;
    final String city;
    final int age;
  const Sayfa2(this.name, this.city,this.age);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa 2"),
        foregroundColor: Colors.amber,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Merhaba $name",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Memleketin: $city"),
              SizedBox(height: 10,),
              Text("Yaşın: $age"),
            ],
          ),
        ),
      ),
    );
  }
}
/*
Flutterda veri aktarımı yaparken kurucu metodlar kullanılır. Veriyi alcak sınıfta değişkenler tanımlanır kurucu metoda verilir. Bu sınıfın çağırıldığı yerde de parametre 
olarak gönderilecek veri gönderilir.
Veri alınacak sınıf: 
  class SayfaB extends StatelessWidget {
    final String name;
    const SayfaB(this.name);
Veriyi verecek sınıf: 
    String name=tf.text;
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SayfaB(name)));
Yukarıda da görüldüğü gibi name değişkeni SayfaB() de parametre oalrak gönderiliyor. B sayfası da bunu alıp kullanıyor.
*/
class SayfaA extends StatelessWidget {
  const SayfaA({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController tf =TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa A"),
        foregroundColor: Colors.amber,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: tf,
                decoration: InputDecoration(
                  label: Text("Adınız")
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              String name=tf.text;
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SayfaB(name))); //Sayfa B ye gittikten sonra A ya geri dönülebilir.
              //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>SayfaB())); //Sayfa B ye gittikten sonra A ya geri döndürmüyor.
            }, child:Text("Sayfa B ye git"),),
          ],
        ),
      ),
    );
  }
}
class SayfaB extends StatelessWidget {
  final String name;
  const SayfaB(this.name);
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa B"),
        foregroundColor: Colors.deepPurple,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text("Merhaba $name"),
      ),
    );
  }
}
class MyProject extends StatelessWidget {
  const MyProject({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Çalışmam"),
        foregroundColor: Colors.deepPurple,
        backgroundColor: Colors.amber,
      ),
    );
  }
}

//Kullanıcı ile ekileşim varsa stateful kullanılor
class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Floating button çalışması"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hint: Text("Veri"),
              ),
            ),
            FloatingActionButton(onPressed: (){},
            child:Icon(Icons.precision_manufacturing),
            tooltip: "Fab1", // Butanın üzerine basılı tuttuğumuzda burada yazılan şey ekranda gözükür. 
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.face_5_outlined),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
    );
  }
}

//Sayfalar arası geçiş
//1)Geçiş türü, 2)Geçiş yönü, 3)Bulunduğu yer - Gideceği yer
//Tanımlama: Sayfadan sayfaya ileri gitmek.
//Navigator.push(bulunduğu_sayfa,Rota)=>
/*
Navigator.push(
  context,MaterialPageRoute(
  builder: (context)=> SayfaA()
  )
);
*/

//Floatin action button özellikleri: 
//Normal bir buton gibi kullanılabilir ama scaffold içerisinde kullanılır. Ekrana duyarlı çalışır.
//Klavye açıldığında klavye ile yukarı çıkar.
//Sayfada daima sabit kalır(klavye hariç)



class Example1 extends StatefulWidget {

  const Example1({super.key});

  @override
  State<Example1> createState() => _Example1State();
} //constructor ile ilgili bir şey tanımlanıcaksa buraya tanımlanır.
class _Example1State extends State<Example1> {
    String ad ="";
    TextEditingController tf=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextField(
              controller: tf,
              //obscureText: Şifre için kullanılır,
              //maxLength: girilecek max karakter sayısı,
              //keyboardType: Klavye türü,
              //textAlign: İçerideki yazının konumu,
              //style: İçindeki yazının stili,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder( //Basılmadan önce gözükücek çerçeve rengi
                  borderSide: BorderSide(color: Colors.deepPurple,width: 2),
                  borderRadius: BorderRadius.circular(30)
                ),
                focusedBorder:OutlineInputBorder(//Basıldıktan sonra gözüken çerçeve rengi
                  borderSide: BorderSide(color: const Color.fromARGB(255, 193, 162, 213),width: 2),
                  borderRadius: BorderRadius.circular(30)
                ),
                filled: true,
                fillColor: Colors.amber,
                //hintText: "veri" iç bilgilendirme yazısı
                label: Text("Veri"), //dış bilgilendirme yazısı
                labelStyle: TextStyle(color: Colors.deepPurple),
              ),
            ),
          ),
          Text("Alınan veri: $ad"),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: (){
              setState(() { //Butona her bastığımızda bütün programı baştan çalıştırır.
                ad=tf.text;
              });
            }, 
            child:Text("Gönder"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 28,vertical: 14),//Butonu boyutlandırdık.
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.amber,
              shadowColor: Colors.amber,
              elevation: 10, //Gölgenin butona olan uzaklığı
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: const Color.fromARGB(255, 227, 205, 142),width: 3),
              )
            ),
            )

        ],
      ),
    );
  }
}