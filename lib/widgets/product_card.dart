import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_icons.dart';

class ProductCardHorizintal extends StatelessWidget {
  const ProductCardHorizintal({
    super.key,
    required this.title,
    required this.price,
    required this.rating,
    required this.numOfReviews,
  });

  final String title;
  final int price;
  final double rating;
  final int numOfReviews;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ///image rounded square
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: myLightGray,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              PHONE_IMAGE,
              width: 72,
              height: 72,
            ),
          ),
          const SizedBox(
            width: 10,
          ),

          ///title & reviews & price
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 6,
              ),

              ///Rating
              Row(
                children: [
                  const Icon(
                    Icons.star_rounded,
                    color: Colors.yellow,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '$rating (${numOfReviews}k review)',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              /// price
              Text(
                '$price AED',
                style: TextStyle(
                  color: myGreen,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(myGreen),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                  ),
                ),
            onPressed: () {},
            child: const Text('Shop Now'),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
