import 'package:flutter/material.dart';
import 'package:mobil_shop/widgets/product_card.dart';

import '../core/utils/app_colors.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Best Seller  text + see all text
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Best Seller',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'See All',
                style: TextStyle(
                  color: myGreen,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const ProductCardHorizintal(
          title: 'Oneplus 9',
          rating: 4.5,
          numOfReviews: 3,
          price: 344,
        ),
        const SizedBox(
          height: 15,
        ),
        const ProductCardHorizintal(
          title: 'Oneplus 9',
          rating: 4.5,
          numOfReviews: 3,
          price: 344,
        ),
        const SizedBox(
          height: 15,
        ),
        const ProductCardHorizintal(
          title: 'Oneplus 9',
          rating: 4.5,
          numOfReviews: 3,
          price: 344,
        ),
      ],
    );
  }
}
