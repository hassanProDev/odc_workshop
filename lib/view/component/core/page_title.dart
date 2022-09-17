import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTitle extends StatelessWidget {
  String title;

  PageTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$title',
      style: GoogleFonts.poppins(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
