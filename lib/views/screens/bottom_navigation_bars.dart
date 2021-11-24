import 'package:flutter/material.dart';
import 'package:fullcart/views/screens/profile_page.dart';
import 'package:fullcart/views/screens/shipping.dart';
import 'package:fullcart/views/widgets/custom_bottom_navigation_bar.dart';

import 'cart_page.dart';
import 'favourite_page.dart';
import 'home_screen/shopping_page.dart';

class BottomNavigationBars extends StatelessWidget {
  final int? index;
  final PageController myPage = PageController();
  BottomNavigationBars({
    Key? key,
    this.index = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          ShoppingPage(),
          FavouritePage(),
          Shipping(),
          CartPage(),
          ProfilePage(),
        ],
        controller: myPage,
      ),
      bottomNavigationBar: CustomBar(
        onPageChange: (int index) {
          myPage.jumpToPage(index);
        },
      ),
    );
  }
}
