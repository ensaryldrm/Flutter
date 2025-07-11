import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sabitler {
  static const anaRenk = Colors.indigo;
  static const String baslikText = "Ortalama Hesaplayıcı";
  static final TextStyle baslikStyle = GoogleFonts.quicksand(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    color: anaRenk,
  );

  static BorderRadius borderRadius = BorderRadius.circular(24);

  static final TextStyle dersSayisiStyle = GoogleFonts.quicksand(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Sabitler.anaRenk,
  );

  static final TextStyle ortalamaStyle = GoogleFonts.quicksand(
    fontSize: 40,
    fontWeight: FontWeight.w800,
    color: Sabitler.anaRenk,
  );

  static final TextStyle ortalamaGosterBodyStyle = GoogleFonts.quicksand(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Sabitler.anaRenk,
  );

  static final EdgeInsets dropDownPadding = EdgeInsets.symmetric(
    horizontal: 14,
    vertical: 2,
  );
}
