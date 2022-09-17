import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm_odc_project/res/shared/constance.dart';

class CustomTextField extends StatelessWidget {
  String text;
  String? value;
  String? validator;
  TextInputType? inpType;
  late bool isPassword;
  bool? hasIcon;
  TextEditingController? controler;
  IconData? icon;
  Function? func;

  CustomTextField(
      {required this.text,
      this.value,
      this.controler,
      this.hasIcon = false,
      this.isPassword = false,
      this.icon,
      this.func});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: controler,
        obscureText: isPassword,
        validator: (value) {
          if (value!.isEmpty || value == null) {
            return "please enter your $text !";
          }
        },
        onChanged: (value) {},
        decoration: InputDecoration(
            // isDense: true,
            hintText: text,
            hintStyle: GoogleFonts.poppins(),
            suffixIcon: hasIcon!
                ? InkWell(
                    onTap: () {
                      func!();
                    },
                    child: Icon(
                      icon,
                      color: primaryColor,
                    ))
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )),
      ),
    );
  }
}
