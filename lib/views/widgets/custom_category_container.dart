import 'package:flutter/material.dart';

class CustomCategoryContainer extends StatelessWidget {
  final String? url;
  final Color? color;
  const CustomCategoryContainer({
    Key? key,
    this.url,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.darken,
          color: color,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.contain,
            image: NetworkImage(
              url!,
            ),
          ),
        ),
      ),
    );
  }
}
