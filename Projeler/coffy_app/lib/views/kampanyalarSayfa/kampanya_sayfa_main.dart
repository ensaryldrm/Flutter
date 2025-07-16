import 'package:flutter/material.dart';

class KampanyaSayfaMain extends StatefulWidget {
  const KampanyaSayfaMain({super.key});

  @override
  State<KampanyaSayfaMain> createState() => _KampanyaSayfaMainState();
}

class _KampanyaSayfaMainState extends State<KampanyaSayfaMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 236, 240),

      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Kampanyalar",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Aktif Kampanyalar",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 116, 194, 181),
                            Colors.white,
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 7),
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.notifications_none,
                              color: Color.fromARGB(255, 116, 194, 181),
                            ),
                          ),
                          SizedBox(width: 7),
                          Container(
                            child: Text(
                              "Bildirimleri açarak kampanyalardan\nhaberdar olabilirsin!",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade800,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 116, 194, 181),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Text(
                              "Bildirimleri Aç",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "resimler/reklam1.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 25),
                                  Container(
                                    child: Text(
                                      "Coffy'den Hepsiburada Premium'lulara %50 İndirim!",
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      "Hepsiburada Premium Üyelerine, Coffy App'ten\nİlk İçecek Siparişlerine Özel %50 İndirim Fırsatını Ka...",
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text(
                                      "Son Kullanım Tarihi: 07.09.2025",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Kampanya Koşulları",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios, size: 13),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "resimler/reklam2.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      "Bi Öğrenci'lilere Tüm İçeceklerde %50 İndirim!",
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      "Coffy'den, Bi'Öğrenci platformuna üye öğrencilere\nözel bu fırsatı kaçırma!",
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text(
                                      "Son Kullanım Tarihi: 07.09.2025",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Kampanya Koşulları",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios, size: 13),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "resimler/reklam1.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 45),
                                  Container(
                                    child: Text("Vodofone'lulara Özel Fırsat!"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      "Coffy'den, Vodafone Kullanıcılarına Özel Hediye\nKahve Fırsatını Kaçırma!",
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text(
                                      "Son Kullanım Tarihi: 07.09.2025",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Kampanya Koşulları",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios, size: 13),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "resimler/reklam2.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 20),
                                  Container(
                                    child: Text("Lezzet Çarkı Sadece Coffy App'te!"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [ 
                                  SizedBox(width: 20,),
                                  Container(
                                    child: Text(
                                      "Lezzet Çark'ını Çevir İndirimleri Yakala!",
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Son Kullanım Tarihi: 07.09.2025",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Kampanya Koşulları",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios, size: 13),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "resimler/reklam1.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 20),
                                  Container(
                                    child: Text("Arkadaşına Öner, Kahve Kazan"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  
                                  Container(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Tek fiyatlı kahve noktası Coffy'i arkadaşınla tanıştır,\no yepyeni bir kahve deneyimi yaşasın, sen de Coff...",
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Son Kullanım Tarihi: 07.09.2025",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Kampanya Koşulları",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios, size: 13),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "resimler/reklam2.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 20),
                                  Container(
                                    child: Text("Kayıt Ol Kahve Kazan"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Container(
                                    child: Text(
                                      "Coffy uygulamasını indir ve ilk siparişini ver, 2.\nKahven Coffy'den hediye!",
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text(
                                      "Son Kullanım Tarihi: 07.09.2025",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Kampanya Koşulları",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios, size: 13),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
