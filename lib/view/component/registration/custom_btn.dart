import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBtn extends StatelessWidget {
  String text;
  Color? color;
  Color? textColor;
  Function? function;

  CustomBtn({required this.text, this.color, this.textColor, this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function!();
      },
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: Color(0xffff6600),
            )),
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 16),
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Text(
          text,
          style: GoogleFonts.poppins(
              color: textColor, fontWeight: FontWeight.bold, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
