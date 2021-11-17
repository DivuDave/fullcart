import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;
  final Color? color;
  final String? buttonName;
  final void Function()? onPressed;

  const CustomElevatedButton({
    Key? key,
    this.height,
    this.width,
    this.color,
    required this.onPressed,
    this.buttonName,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius!),
          ),
          elevation: 20,
          primary: color,
        ),
        onPressed: onPressed,
        child: Text(
          buttonName!,
          style: TextStyle(),
        ),
      ),
    );
  }
}
