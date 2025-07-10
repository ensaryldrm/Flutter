import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldTekrar extends StatefulWidget {
  const TextFormFieldTekrar({super.key});

  @override
  State<TextFormFieldTekrar> createState() => _TextFormFieldTekrarState();
}

class _TextFormFieldTekrarState extends State<TextFormFieldTekrar> {
  late final String _email, _password, _userName;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Text Form Field",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Color.fromARGB(255, 152, 152, 152),
        foregroundColor: Colors.cyan.shade100,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUnfocus,
                child: Column(
                  // TextEditingController'a ihtiyaç yoktur kendiliğinden parametresi vardır.
                  children: [
                    TextFormField(
                      /* --varsayılan değer tanımlar--
                      initialValue: "EnsarYldrm", */
                      onSaved: (gelenUserName) {
                        _userName = gelenUserName!;
                      },
                      decoration: InputDecoration(
                        // --hata mesajlarının rengini değiştirir--
                        errorStyle: TextStyle(color: Colors.orange),
                        labelText: "Kullanıcı Adı",
                        hintText: "Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (gelenKullaniciAdi) {
                        if (gelenKullaniciAdi!.length < 5) {
                          return "5 karakterden az olamaz!";
                        } else {
                          return null;
                        }
                      },
                    ),

                    SizedBox(height: 10),

                    TextFormField(
                      /* --varsayılan değer tanımlar--
                      initialValue: "EnsarYldrm", */
                      onSaved: (gelenEmail) {
                        _email = gelenEmail!;
                      },
                      decoration: InputDecoration(
                        // --hata mesajlarının rengini değiştirir--
                        errorStyle: TextStyle(color: Colors.orange),
                        labelText: "Email",
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (gelenEmail) {
                        if (!EmailValidator.validate(gelenEmail!)) {
                          return "Geçerli bir mail giriniz!";
                        } else {
                          return null;
                        }
                      },
                    ),

                    SizedBox(height: 10),

                    TextFormField(
                      /* --varsayılan değer tanımlar--
                      initialValue: "EnsarYldrm", */
                      onSaved: (gelenSifre) {
                        _password = gelenSifre!;
                      },
                      decoration: InputDecoration(
                        // --hata mesajlarının rengini değiştirir--
                        errorStyle: TextStyle(color: Colors.orange),
                        labelText: "Şifre",
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (gelenSifre) {
                        if (gelenSifre!.isEmpty) {
                          return "Şifre boş olamaz!";
                        }
                        if (gelenSifre.length < 6) {
                          return "Şifre en az 6 karakter olmalı!";
                        } else {
                          return null;
                        }
                      },
                    ),

                    SizedBox(height: 10),

                    SizedBox(
                      width: 120,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.green.shade900,
                            width: 1,
                          ),
                          backgroundColor: Colors.green.shade400,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {
                          // validate tamamlandı mı kontrol etmek için
                          bool _isValidate = _formKey.currentState!.validate();
                          if (_isValidate) {
                            // TextFormField'dan gelen verileri kaydetme işlemi
                            _formKey.currentState!.save();
                            String result =
                                "Username: $_userName\nEmail: $_email\nPassword: $_password";
                            ScaffoldMessenger.of(
                              context,
                            ).showSnackBar(SnackBar(content: Text(result)));
                            _formKey.currentState!.reset();
                          }
                        },
                        child: Text("Onayla"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
