import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';

class CustomCategoryContainer extends StatelessWidget {
  final String? url;
  final Color? color;
  CustomCategoryContainer({
    Key? key,
    this.url,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  offset: Offset(0, 70),
                  color: ColorThemes.grey0xFF7F8185,
                ),
              ],
            ),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.network(url!),
              ),
            ),
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
