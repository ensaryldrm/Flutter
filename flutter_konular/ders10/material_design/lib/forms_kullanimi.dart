import 'package:flutter/material.dart';

class FormsKullanimi extends StatefulWidget {
  const FormsKullanimi({super.key});

  @override
  State<FormsKullanimi> createState() => _FormsKullanimiState();
}

class _FormsKullanimiState extends State<FormsKullanimi> {
  // Validate kontrolü için gereken key
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Ad soyadı çekmemiz için gereken tf

  TextEditingController tfAdSoyad = TextEditingController();
  // Şifreyi çekmemiz için gereken tf
  TextEditingController tfSifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms Kullanımı"),
        centerTitle: true,
        backgroundColor: Color(0xff708000),
        foregroundColor: Colors.white,
      ),
      body: Center(
        // Ana Gövde Başlangıç
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    // Kullanıcı Adı Giriş Kontrol Başlangıç
                    TextFormField(
                      controller: tfAdSoyad,
                      decoration: InputDecoration(hintText: "Kullanıcı adı: "),
                      validator: (tfAdSoyad) {
                        if (tfAdSoyad!.isEmpty) {
                          return "Kullanıcı adı boş olamaz!";
                        }
                        return null;
                      },
                    ),
                    // Kullanıcı Adı Giriş Kontrol Bitiş
                    SizedBox(height: 15),
                    // Şifre Giriş Kontrol Başlangıç
                    TextFormField(
                      controller: tfSifre,
                      decoration: InputDecoration(hintText: "Şifre: "),
                      validator: (tfSifre) {
                        if (tfSifre!.isEmpty) {
                          return "Şifre Boş Olamaz!";
                        }
                        if (tfSifre.length < 6) {
                          return "Şifre en az 6 karakter olmalı!";
                        }
                        return null;
                      },
                    ),
                    // Şifre Giriş Kontrol Bitiş
                    SizedBox(height: 20),
                    // Giriş Button Başlangıç
                    ElevatedButton(
                      onPressed: () {
                        bool kontrolSonuc = formKey.currentState!.validate();
                        if (kontrolSonuc) {
                          String userName = tfAdSoyad.text;
                          String userPass = tfSifre.text;
                          print("Kullanici adi: $userName\nŞifre: $userPass");
                        }
                      },
                      child: Text("Giriş Yap"),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 12,
                        ),
                        backgroundColor: Color(0xff708000),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10),
                        ),
                      ),
                    ),
                    // Giriş Button Bitiş
                  ],
                ),
              ),
            ),
          ],
        ),
        // Ana Gövde Bitiş
      ),
    );
  }
}

// Form da validate yapabilmek için globalkey türünde bir key vardır. Bu key bize validate yapmamızı sağlar.
