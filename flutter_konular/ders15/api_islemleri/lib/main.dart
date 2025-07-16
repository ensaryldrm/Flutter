import 'package:api_islemleri/widgets/global_api_islemleri.dart';
import 'package:api_islemleri/widgets/local_api_islemleri.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyProject());
  }
}

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("API İşlemleri"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // BİRİNCİ ELEVATED BUTTON
            SizedBox(
              height: deviceHeight * 0.0415,
              width: deviceWidth * 0.415,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LocalApiIslemleri(),
                    ),
                  );
                },
                child: Text("Local API"),
              ),
            ),

            SizedBox(height: 20),

            // İKİNCİ ELEVATED BUTTON
            SizedBox(
              height: deviceHeight * 0.0415,
              width: deviceWidth * 0.415,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => GlobalApiIslemleri(),
                    ),
                  );
                },
                child: Text("Global API"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
