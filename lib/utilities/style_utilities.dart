import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';

class StyleFor100 extends StatelessWidget {
  final String? text;
  const StyleFor100({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 100,
        color: ColorThemes.orange0xffed3454,
      ),
    );
  }
}
