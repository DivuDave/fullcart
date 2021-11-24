import 'package:flutter/material.dart';

class CustomTopBrandsContainer extends StatelessWidget {
  final String? url;
  final double? radius;
  final double? radius1;
  final double? width;
  const CustomTopBrandsContainer({
    Key? key,
    this.url,
    this.radius,
    this.width,
    this.radius1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(url!),
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(radius ?? 0),
          bottomRight: Radius.circular(radius1 ?? 0),
        ),
      ),
    );
  }
}
