import 'package:acilir_menu/widgets/image_and_tabbar_page.dart';
import 'package:acilir_menu/widgets/nested_tab_bar_ornegi.dart';
import 'package:acilir_menu/widgets/settings_expansion_menu.dart';
import 'package:acilir_menu/widgets/expansiontile_page.dart';
import 'package:acilir_menu/widgets/liste_ornek.dart';
import 'package:acilir_menu/widgets/simple_image_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NestedTabBarOrnegi(),
    );
  }
}

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  var keyList = PageStorageKey("key list");
  var keyExpansion = PageStorageKey("key expansion");

  late List<Widget> sayfaList;
  int secilmisIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayfaList = [
      SettingsExpansionMenu(),
      ExpansiontilePage(expansionKey: keyExpansion),
      ListeOrnek(listKey: keyList),
      //PageviewPage(),
      SimpleImageSlider(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: secilmisIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.orange),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        onTap: (value) {
          setState(() {
            secilmisIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(label: "Ayarlar", icon: Icon(Icons.settings)),

          BottomNavigationBarItem(
            label: "Expansion",
            icon: Icon(Icons.arrow_upward),
          ),
          BottomNavigationBarItem(
            label: "Listview",
            icon: Icon(Icons.list_alt),
          ),
          BottomNavigationBarItem(
            label: "Pageview",
            icon: Icon(Icons.pageview),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          "Tasarım Araçları",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber.shade600,
        foregroundColor: Colors.black,
      ),
      body: sayfaList[secilmisIndex],
    );
  }
}
