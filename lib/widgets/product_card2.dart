import 'dart:developer';

import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.rating,
    required this.numOfReviews,
    required this.image,
    this.discountPercentage,
  });

  final String name;

  final int? discountPercentage;
  final String image;
  final int price;
  final double rating;
  final int numOfReviews;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff414138).withOpacity(.14),
            blurRadius: 10,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              /// discount banner
              if (discountPercentage != null)
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: myGreen,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    '-$discountPercentage%',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              const Spacer(),

              /// favorite icon
              InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  log('message');
                },
                splashColor: myGreen,
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: myGreen,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.favorite,
                    size: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),

          /// product image
          Image.asset(
            image,
            width: 110,
            height: 110,
          ),
          const SizedBox(
            height: 20,
          ),

          /// Product name
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(
            height: 8,
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

          const SizedBox(
            height: 8,
          ),

          ///Rating
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star_rounded,
                color: Colors.yellow,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                '$rating (${numOfReviews}k review)',
                style: const TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
