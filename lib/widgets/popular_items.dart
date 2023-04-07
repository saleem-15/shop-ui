import 'package:flutter/material.dart';
import 'package:mobil_shop/core/utils/app_icons.dart';
import 'package:mobil_shop/widgets/product_card2.dart';

import '../core/utils/app_colors.dart';

class PopularItems extends StatelessWidget {
  const PopularItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// New Arrival text + see all text
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'popularltem   ',
              style: Theme.of(context).textTheme.headlineSmall,
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

        GridView(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
            mainAxisExtent: 250,
          ),
          children: const [
            ProductCard(
              image: PHONE_IMAGE,
              name: 'Oneplus 9',
              rating: 4.5,
              numOfReviews: 3,
              price: 945,
              discountPercentage: 30,
            ),
            ProductCard(
              image: PHONE_IMAGE2,
              name: 'Oneplus 9',
              rating: 4.5,
              numOfReviews: 3,
              price: 344,
            ),
            ProductCard(
              image: IPHONE_IMAGE,
              name: 'Oneplus 9',
              rating: 4.5,
              numOfReviews: 3,
              price: 344,
            ),
            ProductCard(
              image: PHONE_IMAGE3,
              name: 'Oneplus 9',
              rating: 4.5,
              numOfReviews: 3,
              price: 344,
            ),
          ],
        ),
      ],
    );
  }
}
