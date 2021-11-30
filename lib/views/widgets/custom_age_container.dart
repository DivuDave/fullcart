import 'package:flutter/material.dart';
import 'package:fullcart/utilities/style_utilities.dart';

class CustomAgeContainer extends StatelessWidget {
  final Color? containerColor;
  final Color? fontColor;
  final String? age;
  const CustomAgeContainer({
    Key? key,
    this.containerColor,
    this.age,
    this.fontColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: containerColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          age ?? "",
          style: FontStyles.for16(
            fontColor: fontColor,
          ),
        ),
      ),
    );
  }
}
