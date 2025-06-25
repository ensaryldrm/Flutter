import 'package:flutter/material.dart';

class Ornek1 extends StatefulWidget {
  const Ornek1({super.key});

  @override
  State<Ornek1> createState() => _Ornek1State();
}

class _Ornek1State extends State<Ornek1> {
  bool isSearch = false;
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Kullanımı"),
        backgroundColor: Colors.red.shade700,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(40),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 56,
                color: Colors.grey.shade300,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isSearch = !isSearch;
                        });
                      },
                      icon: Icon(
                        isSearch ? Icons.close : Icons.search,
                        size: 36,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isLike = !isLike;
                });
              },
              child: Icon(
                isLike ? Icons.favorite : Icons.favorite_outline,
                color: isLike ? Colors.red : Colors.black,
                size: 40,
              ),
            ),

            InkWell(
              onTap: () {
                setState(() {
                  isLike = !isLike;
                });
              },
              child: Icon(
                isLike ? Icons.favorite : Icons.favorite_outline,
                color: isLike ? Colors.red : Colors.black,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
