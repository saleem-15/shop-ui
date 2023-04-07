import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobil_shop/core/utils/app_colors.dart';

import '../core/utils/app_icons.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  final nameController = TextEditingController();
  final cardNumberController = TextEditingController();
  final cvvController = TextEditingController();
  final expireDateController = TextEditingController();
  final couponController = TextEditingController();

  final dateOfBirthFormatter = MaskTextInputFormatter(
    mask: '##/##',
    filter: {"#": RegExp(r'[0-9]')},
  );

  bool showCardBack = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CreditCardWidget(
                cardBgColor: Colors.white,
                width: double.infinity,
                height: 200,
                isHolderNameVisible: true,
                obscureCardCvv: false,
                cardNumber: cardNumberController.text.trim(),
                expiryDate: expireDateController.text.trim(),
                cardHolderName: nameController.text.trim(),
                cvvCode: cvvController.text.trim(),
                showBackView: showCardBack,
                onCreditCardWidgetChange: (p0) {},
                backgroundImage: CREDIT_CARD_BACKGROUND_IMAGE,
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                'Card Details',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              TextField(
                textInputAction: TextInputAction.next,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[a-zA-Z ]{1,100}')),
                  LengthLimitingTextInputFormatter(26),
                ],
                onChanged: (value) {
                  showCardBack = false;
                  setState(() {});
                },
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Holder name',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              TextField(
                textInputAction: TextInputAction.next,
                onChanged: (value) {
                  showCardBack = false;
                  setState(() {});
                },
                controller: cardNumberController,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(19),
                ],
                decoration: const InputDecoration(
                  hintText: 'Card number',
                  prefixIcon: Icon(Icons.credit_card_rounded),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {
                        showCardBack = false;
                        setState(() {});
                      },
                      inputFormatters: [
                        dateOfBirthFormatter,
                      ],
                      controller: expireDateController,
                      decoration: const InputDecoration(
                        hintText: 'MM/YY',
                        prefixIcon: Icon(Icons.date_range_rounded),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {
                        showCardBack = true;
                        setState(() {});
                      },
                      controller: cvvController,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(3),
                      ],
                      decoration: const InputDecoration(
                        hintText: 'CVV',
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 46,
              ),
              TextField(
                textInputAction: TextInputAction.done,
                onChanged: (value) {
                  showCardBack = false;
                  setState(() {});
                },
                controller: couponController,
                decoration: const InputDecoration(
                  hintText: 'coupon/ promo code',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      myGreen,
                    ),
                  ),
                  child: const Text(
                    'Confirm',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
