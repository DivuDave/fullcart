import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';

class CustomProductListTile extends StatelessWidget {
  final String? url;
  final String? age;
  final String? color;
  final String? itemname;
  final String? price;
  const CustomProductListTile({
    Key? key,
    this.url,
    this.age,
    this.color,
    this.itemname,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(url ?? ""),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemname!,
                style: FontStyles.for20(
                  fontColor: ColorThemes.black0xff010101,
                ),
              ),
              Text(
                price!,
                style: FontStyles.for16(
                  fontColor: ColorThemes.black0xff010101,
                ),
              ),
              Row(
                children: [
                  Text(
                    age!,
                    style: FontStyles.for14(
                      fontColor: ColorThemes.grey0xFF7F8185,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 15,
                      width: 3,
                      color: ColorThemes.grey0xFF7F8185,
                    ),
                  ),
                  Text(
                    color!,
                    style: FontStyles.for14(
                      fontColor: ColorThemes.grey0xFF7F8185,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
