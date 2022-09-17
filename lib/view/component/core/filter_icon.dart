import 'package:flutter/material.dart';

import '../../../res/shared/constance.dart';

class FilterIcon extends StatelessWidget {
  Function? func;

  FilterIcon({this.func});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          func!();
        },
        child: Icon(
          Icons.filter_alt,
          color: primaryColor,
          size: 30,
        ),
      ),
    );
  }
}
