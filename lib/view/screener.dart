import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_icons.dart';

String? selectedPaymentMethod;

class Screener extends StatefulWidget {
  const Screener({super.key});

  @override
  State<Screener> createState() => _ScreenerState();
}

class _ScreenerState extends State<Screener> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
        ),
        title: const Text(
          'Screener',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 25,
          left: 25,
          bottom: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// Qr Scanner widget
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      PHONE_IMAGE,
                    ),
                    Image.asset(
                      QR_CODE_SCANNER_IMAGE,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),

              /// New Arrival text + see all text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'popularltem',
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

              const ProductCard(
                title: 'Oneplus 9',
                price: 676,
                ram: '4/64 RAM',
              ),
              const SizedBox(
                height: 16,
              ),
              const ProductCard(
                title: 'Oneplus 9',
                price: 676,
                ram: '6/128 RAM',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.ram,
  });

  final String title;
  final int price;
  final String ram;

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
