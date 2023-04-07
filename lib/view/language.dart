import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';

String? selectedPaymentMethod;

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  final languages = [
    'English',
    'Portugues',
    'Pyccknn',
    'Deutsch',
    'Francais',
    'Espanol',
    'Italiano',
    'Polski',
    'Nederlands',
  ];
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3)).then(
      (value) {
        showModalBottomSheet(
          context: context,
          useSafeArea: false,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )),
          builder: (context) => modalBottomSheet(),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
        ),
        title: const Text(
          'Settings',
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
    );
  }

  Widget modalBottomSheet() {
    return ListView(
      padding: const EdgeInsets.only(
        right: 15,
        left: 15,
        bottom: 15,
      ),
      children: [
        const SizedBox(
          height: 32,
        ),
        const Text(
          'Language',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),

        /// من الممكن استخدام هذا الكود بدلا الكتابة اليدوية للغات المتوفرة (هذا الافضل)
        // ...languages
        //     .map(
        //       (e) => Padding(
        //         padding: const EdgeInsets.symmetric(vertical: 8),
        //         child: LanguageTile(
        //           title: e,
        //           setStateFunction: () => setState(() {}),
        //         ),
        //       ),
        //     )
        //     .toList(),
        LanguageTile(
          title: 'English',
          setStateFunction: () => setState(() {}),
        ),
        const SizedBox(
          height: 16,
        ),
        LanguageTile(
          title: 'Portugues',
          setStateFunction: () => setState(() {}),
        ),
        const SizedBox(
          height: 16,
        ),
        LanguageTile(
          title: 'Pyccknn',
          setStateFunction: () => setState(() {}),
        ),
        const SizedBox(
          height: 16,
        ),
        LanguageTile(
          title: 'Deutsch',
          setStateFunction: () => setState(() {}),
        ),
        const SizedBox(
          height: 16,
        ),
        LanguageTile(
          title: 'Francais',
          setStateFunction: () => setState(() {}),
        ),
        const SizedBox(
          height: 16,
        ),
        LanguageTile(
          title: 'Espanol',
          setStateFunction: () => setState(() {}),
        ),
        const SizedBox(
          height: 16,
        ),
        LanguageTile(
          title: 'Italiano',
          setStateFunction: () => setState(() {}),
        ),
        const SizedBox(
          height: 16,
        ),
        LanguageTile(
          title: 'Polski',
          setStateFunction: () => setState(() {}),
        ),
        const SizedBox(
          height: 16,
        ),
        LanguageTile(
          title: 'Nederlands',
          setStateFunction: () => setState(() {}),
        ),
        const SizedBox(
          height: 26,
        ),
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color(0xff141010),
            ),
          ),
          child: const Text(
            'Save changes',
          ),
        )
      ],
    );
  }
}

class LanguageTile extends StatelessWidget {
  const LanguageTile({
    super.key,
    required this.title,
    required this.setStateFunction,
  });

  final String title;
  final Function() setStateFunction;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: () {
          selectedPaymentMethod = title;
          setStateFunction();
        },
        child: Container(
          alignment: Alignment.center,
          child: ListTile(
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
