import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyColors {
  static const Color primaryColor = Color(0xFF886345);
  static const Color secondaryColor = Color(0xFFBBBBBB);
  static const Color accentColor = Color.fromARGB(255, 0, 255, 0);
}

class MyFont {
  static TextStyle header = GoogleFonts.inter(
      fontSize: 18,
      fontWeight: FontWeight.bold,
  );

  static TextStyle title = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );




}
