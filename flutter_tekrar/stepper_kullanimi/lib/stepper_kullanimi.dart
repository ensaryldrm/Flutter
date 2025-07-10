import 'package:flutter/material.dart';

class StepperKullanimi extends StatefulWidget {
  const StepperKullanimi({super.key});

  @override
  State<StepperKullanimi> createState() => _StepperKullanimiState();
}

class _StepperKullanimiState extends State<StepperKullanimi> {
  int _aktifStep = 0;
  String kullaniciIsim = "", mail = "", sifre = "";
  late List<Step> tumStepler;
  var keyName = GlobalKey<FormFieldState>();
  var keyEmail = GlobalKey<FormFieldState>();
  var keyPassword = GlobalKey<FormFieldState>();

  bool hata = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tumStepler = _tumStepler();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stepper Kullanımı",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Stepper(
          currentStep: _aktifStep,
          steps: _tumStepler(),
          onStepTapped: (tiklananStepIndex) {
            setState(() {
              _aktifStep = tiklananStepIndex;
            });
          },
          onStepContinue: () {
            setState(() {
              _ileriButonuKontrolu();
            });
          },
          onStepCancel: () {
            setState(() {
              if (_aktifStep > 0) {
                _aktifStep--;
              } else {
                _aktifStep = 0;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _tumStepler() {
    List<Step> stepList = [
      // USERNAME
      Step(
        title: Text("Username"),
        subtitle: Text("Username Altbaşlık"),
        state: stateleriAyarla(0),
        isActive: true,
        content: TextFormField(
          onSaved: (gelenIsim) {
            kullaniciIsim = gelenIsim!;
          },
          key: keyName,
          validator: (value) {
            if (value!.length < 6) {
              return "En az 6 karakter olabilir!";
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            labelText: "Username",
            hintText: "Kullanıcı adı",
            border: OutlineInputBorder(),
          ),
        ),
      ),

      // EMAIL
      Step(
        title: Text("Mail"),
        subtitle: Text("Mail Altbaşlık"),
        state: stateleriAyarla(1),
        isActive: true,
        content: TextFormField(
          onSaved: (gelenEmail) {
            mail = gelenEmail!;
          },
          key: keyEmail,
          validator: (value) {
            if (!value!.contains("@")) {
              return "Geçerli mail giriniz!";
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            labelText: "Email",
            hintText: "Mail",
            border: OutlineInputBorder(),
          ),
        ),
      ),

      // PASSWORD
      Step(
        title: Text("Password"),
        subtitle: Text("Password Altbaşlık"),
        state: stateleriAyarla(2),
        isActive: true,
        content: TextFormField(
          onSaved: (gelenSifre) {
            sifre = gelenSifre!;
          },
          key: keyPassword,
          validator: (value) {
            if (value!.length < 3) {
              return "En az 3 karakter olabilir!";
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Şifrel",
            border: OutlineInputBorder(),
          ),
        ),
      ),
    ];

    return stepList;
  }

  StepState stateleriAyarla(int oAnkiStep) {
    if (_aktifStep == oAnkiStep) {
      if (hata) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _ileriButonuKontrolu() {
    switch (_aktifStep) {
      case 0:
        if (keyName.currentState!.validate()) {
          keyName.currentState!.save();
          hata = false;
          _aktifStep = 1;
        } else {
          hata = true;
        }
        break;

      case 1:
    }
  }
}
