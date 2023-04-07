import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../widgets/best_seller.dart';
import '../widgets/categories.dart';
import '../widgets/hot_sale.dart';
import '../widgets/new_arrivals.dart';
import '../widgets/search.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.grid_view_rounded,
          color: Colors.black,
        ),
        title: const Text(
          'Discover',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          right: 25,
          left: 25,
          top: 20,
          bottom: 15,
        ),
        children: const [
          Search(),
          SizedBox(
            height: 32,
          ),
          Categories(),
          SizedBox(
            height: 32,
          ),
          NewArrivals(),
          SizedBox(
            height: 32,
          ),
          HotSale(),
          SizedBox(
            height: 32,
          ),
          BestSeller(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        currentIndex: 1,
        // controller.selectedIndex.value,
        onTap: (index) {},
        //  controller.selectedIndex(index),
        unselectedFontSize: 0, // <-- for NOT saving space for the label
        selectedFontSize: 0, // <-- for NOT saving space for the labe
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: myGray,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: myGray,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore_outlined,
              color: myGray,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: myGray,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: myGray,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
