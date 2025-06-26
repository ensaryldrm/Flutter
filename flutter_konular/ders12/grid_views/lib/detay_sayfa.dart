import 'package:flutter/material.dart';
import 'package:grid_views/ornek2.dart';

class DetaySayfa extends StatefulWidget {
  final String yemekIsim;
  final String imgUrl;

  const DetaySayfa({required this.imgUrl, required this.yemekIsim});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(199, 50, 120, 90),
        title: Text("${widget.yemekIsim} Detay Sayfa"),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.imgUrl)),
              ),
            ),
            Text(
              "${widget.yemekIsim}",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 275, top: 375),
              child: SizedBox(
                width: 100,
                height: 50,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Ornek2()),
                    );
                  },
                  child: Text(
                    "GeriDön",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
