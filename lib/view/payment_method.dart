import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobil_shop/core/utils/app_icons.dart';

import '../core/utils/app_colors.dart';

String? selectedPaymentMethod;

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Text(
          'Payment method',
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
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          right: 15,
          left: 15,
          bottom: 15,
        ),
        children: [
          const Text(
            'Payment',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          PaymentMethodTile(
            iconPath: IC_GOOGLE,
            title: 'Google Pay',
            setStateFunction: () => setState(() {}),
          ),
          const SizedBox(
            height: 16,
          ),
          PaymentMethodTile(
            iconPath: IC_PAYPAL,
            title: 'Paypal',
            setStateFunction: () => setState(() {}),
          ),
          const SizedBox(
            height: 16,
          ),
          PaymentMethodTile(
            iconPath: IC_MASTER_CARD,
            title: 'Mastercard',
            setStateFunction: () => setState(() {}),
          ),
          const SizedBox(
            height: 16,
          ),
          PaymentMethodTile(
            iconPath: IC_APPLE_PAY,
            title: 'Apple Pay',
            setStateFunction: () => setState(() {}),
          ),
          const SizedBox(
            height: 16,
          ),
          PaymentMethodTile(
            iconPath: IC_CASH_ON_DELIVERY,
            title: 'Cash on delivery',
            setStateFunction: () => setState(() {}),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'Address',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: const Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(
                  Icons.fmd_good_rounded,
                  color: Colors.black,
                ),
              ),
              title: const Text('home Add ress'),
              subtitle: const Text(
                'Add the shipping address',
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(
                    Size(44, 44),
                  ),
                  backgroundColor: MaterialStatePropertyAll(myGreen),
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xff141010),
                    ),
                  ),
                  child: const Text(
                    'Confirm',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PaymentMethodTile extends StatelessWidget {
  const PaymentMethodTile({
    super.key,
    required this.title,
    required this.iconPath,
    required this.setStateFunction,
  });

  final String iconPath;
  final String title;
  final Function() setStateFunction;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: () {
          log('message');
          selectedPaymentMethod = title;
          setStateFunction();
        },
        child: Container(
          alignment: Alignment.center,
          height: 70,
          child: ListTile(
            leading: Image.asset(
              iconPath,
              width: 24,
            ),
            title: Text(title),
            trailing: Radio(
              value: title,
              groupValue: selectedPaymentMethod,
              fillColor: MaterialStatePropertyAll(myBlack),
              onChanged: (value) {
                selectedPaymentMethod = value;
                setStateFunction();
              },
            ),
          ),
        ),
      ),
    );
  }
}
