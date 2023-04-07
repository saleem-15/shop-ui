import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_icons.dart';
import '../widgets/popular_items.dart';
import '../widgets/search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.grid_view_rounded,
          color: Colors.black,
        ),
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
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
        children: [
          const Search(),
          const SizedBox(
            height: 32,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              PHONE_PROMO_IMAGE,
              fit: BoxFit.cover,
              height: 180,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const PopularItems(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 15,
              offset: Offset(2, 4),
              spreadRadius: 1,
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          iconSize: 25,
          currentIndex: 1,
          onTap: (index) {},
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
              activeIcon: Container(
                decoration: BoxDecoration(
                  color: myGreen,
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.all(6),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
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
      ),
    );
  }
}
