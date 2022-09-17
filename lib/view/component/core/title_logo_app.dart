import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleLogoApp extends StatelessWidget {
  double fontSize;

  TitleLogoApp({this.fontSize = 25});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Orange ',
          style: GoogleFonts.poppins(
            color: Color(0xffff6600),
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Digital Center',
          style: GoogleFonts.poppins(
            color: Color(0xff000000),
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
