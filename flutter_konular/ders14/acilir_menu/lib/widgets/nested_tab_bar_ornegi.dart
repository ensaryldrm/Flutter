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
              Tab(text: "Yazlık Ürünler"),
              Tab(text: "Kışlık Ürünler"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            InnerTaView(categoryName: "Yazlık Ürünler"),
            InnerTaView(categoryName: "Kışlık Ürünler"),
          ],
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
              Tab(text: "Pantolon"),
              Tab(text: "Tişört"),
              Tab(text: "Ayakkabı"),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(child: Text("$categoryName - Pantolon")),
                Center(child: Text("$categoryName - Tişört")),
                Center(child: Text("$categoryName - Ayakkabı")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
