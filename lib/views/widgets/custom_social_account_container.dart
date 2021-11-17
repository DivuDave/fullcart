import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';

class CustomSocialAccountContainer extends StatelessWidget {
  final Color? color;
  final IconData? icon;
  const CustomSocialAccountContainer({
    Key? key,
    this.color,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Icon(
          icon,
          color: ColorThemes.white0xffffffff,
        ),
      ),
    );
  }
}
