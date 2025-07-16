import 'package:api_islemleri/model/user_model.dart';
import 'package:flutter/material.dart';

class DetaySayfa extends StatelessWidget {
  final UserModel user;
  const DetaySayfa({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: Text("${user.name} Detay Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [Text("İsim: ${user.name}")]),
            Row(children: [Text("Kullanıcı adı: ${user.username}")]),
            Row(
              children: [
                Text(
                  "Adres: ${user.address.city},${user.address.city},${user.address.zipcode}",
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "-Konum-\nEnlem: ${user.address.geo.lat}\nBoylam: ${user.address.geo.lng}",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
