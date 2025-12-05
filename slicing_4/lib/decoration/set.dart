import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassName {
  static const Color color1 = Color(0xFFCF0B0C);
  static const Color color2 = Color(0xFF118E7E);
  static const Color color3 = Color(0xFFFFD6C4);
  static const Color color4 = Color(0xFFCEAE6FF);
  static const Color color5 = Color(0xFFFFFFFF);

  static final TextStyle style1 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: color5,
  );
  static final TextStyle style2 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: color5,
  );
  static final TextStyle style3 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: color5,
  );
  // open sans
  final TextStyle style4 = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: color5,
  );
  static final TextStyle style5 = GoogleFonts.openSans(
    fontSize: 12,
    color: color5,
  );
  static final TextStyle style6 = GoogleFonts.openSans(
    fontSize: 8,
    color: color5,
  );

  static final Icon icon1 = Icon(Icons.home, color: color1, size: 14);
}
