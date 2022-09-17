import 'package:flutter/material.dart';

class BreakLine extends StatelessWidget {
  double width = 100;
  double height = 1;
  Color color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width,
            height: height,
            color: color,
          ),
          Text(' OR '),
          Container(
            width: width,
            height: height,
            color: color,
          ),
        ],
      ),
    );
  }
}
