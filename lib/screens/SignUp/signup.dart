import 'package:flutter/material.dart';
import 'package:sesa/components/button.dart';
import 'package:sesa/components/custom_textfield.dart';
import 'package:sesa/home.dart';
import 'package:sesa/screens/Verification/verification.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                iconSize: 20,
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ));
                },
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            const VentWidget(),
          ],
        ),
      ),
    );
  }
}

class VentWidget extends StatelessWidget {
  const VentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void signIn() {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return Verification();
        },
      ));
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3.0,
          ),
          const Text(
            'Let’s get you all set up',
            style: TextStyle(
                fontSize: 28.0,
                fontFamily: 'Satoshi-Regular',
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Enter your email address registered by the estate admin',
            style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Satoshi-Regular',
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Email Address',
            style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Satoshi-Regular',
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          const CustomTextfield(
              obscureText: false, hintText: 'Placeholder Text'),
          const SizedBox(
            height: 90,
          ),
          ButtonSamp(
            text: 'Next',
            onPressed: signIn,
          ),
        ],
      ),
    );
  }
}
