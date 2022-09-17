import 'package:flutter/material.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios,
        color: Color(0xffff6600),
      ),
    );
  }
}
