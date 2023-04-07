import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.title,
    required this.numOfProducts,
    required this.image,
  });

  final String title;
  final int numOfProducts;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 164,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 110,
            height: 110,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '$numOfProducts items',
            style: TextStyle(
              fontSize: 11,
              color: myGray,
            ),
          ),
        ],
      ),
    );
  }
}
