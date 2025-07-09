import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatefulWidget {
  final List<String> dilList;
  String secilenDil;
  AppBarWidget({required this.secilenDil, required this.dilList});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 30,
            child: Row(
              children: [
                // pizza icon
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("resimler/pizza_icon.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Ovenly yazı
                Container(
                  width: 55,
                  height: 19,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("resimler/ovenly.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                //SPACER SONA GELMESİ İÇİN
                Spacer(),
                //DropDownButton
                Container(
                  width: 110,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 248, 248, 248),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // AŞAĞIYA BAKAN OK
                        Container(
                          width: 13,
                          height: 13,
                          child: Image.asset(
                            color: Color.fromARGB(255, 134, 134, 134),
                            "resimler/asagiya_bakan_ok.png",
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: DropdownButton(
                            underline: Container(),
                            icon: Container(),
                            value: widget.secilenDil,
                            items: widget.dilList.map((String oankiDil) {
                              return DropdownMenuItem(
                                child: Text(
                                  oankiDil,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 138, 138, 138),
                                  ),
                                ),
                                value: oankiDil,
                              );
                            }).toList(),
                            onChanged: (gelenDil) {
                              setState(() {
                                widget.secilenDil = gelenDil!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


/*

 InkWell(
                  
                  onTap: () {
                    DropdownButton(
                      value: widget.secilenDil,
                      items: widget.dilList.map((String oankiDil) {
                        return DropdownMenuItem(
                          child: Text(oankiDil),
                          value: oankiDil,
                        );
                      }).toList(),
                      onChanged: (String? yeniDil) {
                        setState(() {
                          widget.secilenDil = yeniDil!;
                        });
                      },
                    );
                  },
                ),


*/