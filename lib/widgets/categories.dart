import 'package:flutter/material.dart';

import '../core/utils/app_icons.dart';
import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 164,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CategoryCard(
            image: PHONE_IMAGE,
            title: 'SmartPhone',
            numOfProducts: 36,
          ),
          SizedBox(
            width: 15,
          ),
          CategoryCard(
            image: HEADPHONES_IMAGE,
            title: 'Headphones',
            numOfProducts: 36,
          ),
          SizedBox(
            width: 15,
          ),
          CategoryCard(
            image: PHONE_IMAGE,
            title: 'SmartPhone',
            numOfProducts: 36,
          ),
        ],
      ),
    );
  }
}
