import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm_odc_project/res/shared/constance.dart';

class CustomDropDownBtn extends StatelessWidget {
  List<String> items = [];
  String? selectedItem;
  String? lable;
  Function? func;

  CustomDropDownBtn(
      {required this.items, this.lable, this.func, this.selectedItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          lable!.toUpperCase(),
          style: GoogleFonts.poppins(),
        ),
        Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 2, color: primaryColor),
          ),
          child: DropdownButton<String>(
            underline: DropdownButtonHideUnderline(
              child: Container(),
            ),
            value: selectedItem,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: primaryColor,
            ),
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              func!(value);
            },
          ),
        ),
      ],
    );
  }
}
