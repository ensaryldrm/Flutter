import 'package:flutter/material.dart';

class ImageAndTabbarPage extends StatefulWidget {
  const ImageAndTabbarPage({super.key});

  @override
  State<ImageAndTabbarPage> createState() => _ImageAndTabbarPageState();
}

class _ImageAndTabbarPageState extends State<ImageAndTabbarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("RESİM + TAB"),
          backgroundColor: Colors.brown.shade700,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            // RESİM ALANI
            Container(
              alignment: Alignment.bottomCenter,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/id/1011/800/400"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                "Ürün Başlığı",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  shadows: [Shadow(blurRadius: 8, color: Colors.black)],
                ),
              ),
            ),

            // TABBAR
            TabBar(
              dividerHeight: 0,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: "Açıklama"),
                Tab(text: "Yorumlar"),
                Tab(text: "Detay"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text("Ürün Açıklaması")),
                  Center(child: Text("Ürün Yorumları")),
                  Center(child: Text("Ürün Detayları")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
