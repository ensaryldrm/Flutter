import 'package:flutter/material.dart';

AppBar myAppBar(String baslik, Color renk) {
  return AppBar(
    title: Text(baslik),
    backgroundColor: renk,
    foregroundColor: Colors.white,
  );
}
