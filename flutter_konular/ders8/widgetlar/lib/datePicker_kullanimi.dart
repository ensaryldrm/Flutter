import 'package:flutter/material.dart';

class datePickerKullanimi extends StatefulWidget {
  const datePickerKullanimi({super.key});

  @override
  State<datePickerKullanimi> createState() => _datePickerKullanimiState();
}

class _datePickerKullanimiState extends State<datePickerKullanimi> {
  TextEditingController tarihText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker Kullanımı"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tarihText,
                onTap: () {
                  showDatePicker(
                    context: context,
                    firstDate: DateTime(1970),
                    initialDate: DateTime.now(),
                    lastDate: DateTime(2050),
                  ).then((tarih) {
                    setState(() {
                      tarihText.text =
                          "${tarih!.day}/${tarih.month}/${tarih.year}";
                    });
                  });
                },
                decoration: InputDecoration(hintText: "Tarih seçiniz"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
