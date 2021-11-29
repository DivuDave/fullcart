import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';

class CustomCreditCardContainer extends StatelessWidget {
  final String? url;
  const CustomCreditCardContainer({
    Key? key,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Container(
          height: 230,
          width: 360,
          decoration: BoxDecoration(
            color: ColorThemes.white0xffffffff,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                blurRadius: 11,
                offset: Offset(0, 200),
                color: ColorThemes.grey0xFF7F8185,
              ),
            ],
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                url!,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
