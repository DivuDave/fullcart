import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;

  const CustomElevatedButton({Key? key, this.height, this.width, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: color,
        ),
        onPressed: () {},
        child: Text(
          "Get Started",
          style: TextStyle(),
        ),
      ),
    );
  }
}
