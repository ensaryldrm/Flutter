import 'package:flutter/material.dart';

class NestedTabBarOrnegi extends StatefulWidget {
  const NestedTabBarOrnegi({super.key});

  @override
  State<NestedTabBarOrnegi> createState() => _NestedTabBarOrnegiState();
}

class _NestedTabBarOrnegiState extends State<NestedTabBarOrnegi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("İç içe sekmeli Tab"),
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
          bottom: const TabBar(
            labelStyle: TextStyle(color: Colors.black),
            tabs: [
              Tab(text: "Kategori - 1"),
              Tab(text: "Kategori - 2"),
            ],
          ),
        ),
        body: TabBarView(children: [
          
        ]
        ),
      ),
    );
  }
}

class InnerTaView extends StatelessWidget {
  final String categoryName;
  const InnerTaView({required this.categoryName, super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.red,
            unselectedLabelColor: Colors.green,
            tabs: [
              Tab(text: "Alt Kategori A"),
              Tab(text: "Alt Kategori B"),
              Tab(text: "Alt Kategori C"),
            ],
          ),
        ],
      ),
    );
  }
}
