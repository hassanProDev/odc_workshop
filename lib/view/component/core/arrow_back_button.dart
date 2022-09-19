import 'package:flutter/material.dart';

import '../../../res/shared/constance.dart';

class ArrowBackButton extends StatelessWidget {
  Color? color;

  ArrowBackButton({this.color = primaryColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios,
        color: color,
      ),
    );
  }
}
