import 'package:flutter/material.dart';

class YellowPage extends StatefulWidget {
  const YellowPage({super.key});

  @override
  State<YellowPage> createState() => _YellowPageState();
}

class _YellowPageState extends State<YellowPage> {
  late String name;
  @override
  void initState() {
    super.initState();
    name = "Bilal";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yellow Page"),
        backgroundColor: Colors.yellow.shade600,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            SizedBox(
              width: 175,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("/redPage");
                },
                child: Text("Kırmızı sayfaya git"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 175,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade600,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.of(
                    context,
                  ).pushNamed("/greenPage", arguments: name);
                },
                child: Text("Yeşil sayfaya git"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
