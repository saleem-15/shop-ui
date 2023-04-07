import 'package:flutter/material.dart';
import 'package:mobil_shop/core/utils/app_colors.dart';
import 'package:mobil_shop/view/discover.dart';
import 'package:mobil_shop/view/done_order.dart';
import 'package:mobil_shop/view/home.dart';
import 'package:mobil_shop/view/language.dart';
import 'package:mobil_shop/view/payment_details.dart';
import 'package:mobil_shop/view/payment_method.dart';
import 'package:mobil_shop/view/screener.dart';
import 'package:mobil_shop/view/sing_up_page.dart';

class MobilShop extends StatelessWidget {
  const MobilShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: myGreen,
          size: 24,
        ),

        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),

        /// Check Box Theme
        checkboxTheme: CheckboxThemeData(
          // checkColor: MaterialStatePropertyAll(myGreen),
          fillColor: MaterialStatePropertyAll(myGreen),
          side: const BorderSide(),
        ),

        /// Text Field Theme
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          iconColor: myGreen,
          prefixIconColor: myGreen,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide.none,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide.none,
          ),
        ),

        /// outlined Button Theme
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            side: const MaterialStatePropertyAll(
              BorderSide(
                width: 1.5,
                color: Colors.white,
              ),
            ),
          ),
        ),

        /// elevated button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            minimumSize: const MaterialStatePropertyAll(Size(0, 44)),
            backgroundColor: MaterialStatePropertyAll(myBlack),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            ),
          ),
        ),

        /// list Tile Theme
        listTileTheme: const ListTileThemeData(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16,
            // vertical: 20,
          ),
        ),
      ),
      home: const DoneOrder(),
    );
  }
}
