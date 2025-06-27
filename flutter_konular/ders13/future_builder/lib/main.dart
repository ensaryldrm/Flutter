import 'package:flutter/material.dart';
import 'package:future_builder/future_builder_ozel_listeleme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilderOzelListeleme(),
    );
  }
}
