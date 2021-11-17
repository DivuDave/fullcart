import 'package:flutter/material.dart';

class CustomTopBrandsContainer extends StatelessWidget {
  final String? url;
  final double? radius;
  const CustomTopBrandsContainer({Key? key, this.url, this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: 340,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(url!),
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(radius!),
        ),
      ),
    );
  }
}
