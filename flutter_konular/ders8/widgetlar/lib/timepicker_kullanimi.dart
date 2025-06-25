import 'package:flutter/material.dart';

class TimepickerKullanimi extends StatefulWidget {
  const TimepickerKullanimi({super.key});

  @override
  State<TimepickerKullanimi> createState() => _TimepickerKullanimiState();
}

class _TimepickerKullanimiState extends State<TimepickerKullanimi> {
  TextEditingController tfSaat = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Picker Kullanımı", style: TextStyle(fontSize: 25)),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  child: TextField(
                    enableInteractiveSelection: false,
                    controller: tfSaat,
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: "Saat Seçiniz",
                      prefixIcon: GestureDetector(
                        child: Icon(Icons.alarm),
                        onTap: () {
                          showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          ).then((zaman) {
                            setState(() {
                              tfSaat.text = "${zaman!.hour} : ${zaman.minute}";
                            });
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(flex: 6, child: Container(height: 50)),
            ],
          ),
        ),
      ),
    );
  }
}
