import 'package:flutter/material.dart';
import 'package:mobil_shop/core/utils/app_colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool agreeWithTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 25,
            left: 25,
            top: 126,
            bottom: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  const Text(
                    'Sign ',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Up',
                    style: TextStyle(
                      fontSize: 36,
                      color: myGreen,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Create a new account!',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff828282),
                ),
              ),
              const SizedBox(
                height: 70,
              ),

              /// name Field
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      spreadRadius: -18,
                    ),
                  ],
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value == null) {
                      return 'enter a name';
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Full name',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),

              /// email field
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      spreadRadius: -18,
                    ),
                  ],
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value == null) {
                      return 'enter a phone number';
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Email or Phone ',
                    prefixIcon: Icon(Icons.alternate_email_outlined),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),

              /// password field
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      spreadRadius: -18,
                    ),
                  ],
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value == null) {
                      return 'enter a password';
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),

              /// confrim password field
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      spreadRadius: -18,
                    ),
                  ],
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value == null) {
                      return 'enter a Password';
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Confirm Password',
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Checkbox(
                    value: agreeWithTerms,
                    onChanged: (value) {
                      agreeWithTerms = !agreeWithTerms;
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Agree with trams and condition.',
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Sign Up'),
              ),
              const SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an account? ',
                    style: TextStyle(
                      fontSize: 16,
                      color: myGray,
                    ),
                  ),
                  Text(
                    'Log In',
                    style: TextStyle(
                      color: myGreen,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
