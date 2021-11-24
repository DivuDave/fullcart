import 'package:flutter/material.dart';
import 'package:fullcart/utilities/color_utilities.dart';
import 'package:fullcart/utilities/style_utilities.dart';

typedef OnPageChangeCallBack = void Function(int);

class CustomBar extends StatefulWidget {
  final OnPageChangeCallBack onPageChange;

  CustomBar({Key? key, required this.onPageChange}) : super(key: key);

  @override
  _CustomBarState createState() => _CustomBarState();
}

class _CustomBarState extends State<CustomBar> {
  int? selectedPage;

  int? selectedIndex = 0;
  onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onPageChange(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedLabelStyle: FontStyles.for14(
        fontColor: ColorThemes.lightGrey0xFFcfcfcf,
      ),
      selectedLabelStyle: FontStyles.for14(
        fontColor: ColorThemes.black0xff010101,
      ),
      onTap: onItemTapped,
      selectedItemColor: ColorThemes.white0xffffffff,
      currentIndex: selectedIndex!,
      items: [
        BottomNavigationBarItem(
          backgroundColor: ColorThemes.white0xffffffff,
          activeIcon: Icon(
            Icons.shopping_bag,
            color: ColorThemes.black0xff010101,
            size: 33,
          ),
          label: "Shop",
          icon: Icon(
            Icons.shopping_bag,
            color: ColorThemes.lightGrey0xFFcfcfcf,
            size: 33,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.favorite,
            color: ColorThemes.black0xff010101,
            size: 33,
          ),
          label: "Favourite",
          icon: Icon(
            Icons.favorite,
            color: ColorThemes.lightGrey0xFFcfcfcf,
            size: 33,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.local_shipping,
            color: ColorThemes.black0xff010101,
            size: 33,
          ),
          label: "Shipping",
          icon: Icon(
            Icons.local_shipping,
            color: ColorThemes.lightGrey0xFFcfcfcf,
            size: 33,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.shopping_cart,
            color: ColorThemes.black0xff010101,
            size: 33,
          ),
          label: "Cart",
          icon: Icon(
            Icons.shopping_cart,
            color: ColorThemes.lightGrey0xFFcfcfcf,
            size: 33,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.account_box,
            color: ColorThemes.black0xff010101,
            size: 33,
          ),
          label: "Profile",
          icon: Icon(
            Icons.account_box_outlined,
            color: ColorThemes.lightGrey0xFFcfcfcf,
            size: 33,
          ),
        ),
      ],
    );
  }
}
