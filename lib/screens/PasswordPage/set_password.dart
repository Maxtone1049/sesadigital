import 'package:flutter/material.dart';
import 'package:sesa/components/button.dart';
import 'package:sesa/components/custom_textfield.dart';
import 'package:sesa/screens/Verification/verification.dart';
import 'package:sesa/screens/dashboard/dashboard.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  iconSize: 20,
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return Verification();
                      },
                    ));
                  },
                ),
              ),
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Set Password',
                      style: TextStyle(
                          fontSize: 28.0,
                          fontFamily: 'Satoshi-Regular',
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Satoshi-Regular',
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                   CustomTextfield(
                        obscureText: true, hintText: 'Password'),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Re-type Password',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Satoshi-Regular',
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                     CustomTextfield(
                        obscureText: true, hintText: 'Confirm Password'),
                    const SizedBox(
                      height: 40,
                    ),
                    RadioListTile<String>(
                      title: const Text(
                        "Minimum of 8 characters",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Satoshi-Regular',
                            fontSize: 12.0),
                      ),
                      value: "Minimum of 8 characters",
                      groupValue: null,
                      onChanged: (value) {},
                    ),
                    RadioListTile<String>(
                      title: const Text(
                        "One UPPERCASE character",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Satoshi-Regular',
                            fontSize: 12.0),
                      ),
                      value: "One UPPERCASE character",
                      groupValue: null,
                      onChanged: (value) {},
                    ),
                    RadioListTile<String>(
                      title: const Text(
                        "One unique character (e.g: '!@#%^&')",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Satoshi-Regular',
                            fontSize: 12.0),
                      ),
                      value: "One unique character (e.g: '!@#%^&')",
                      groupValue: null,
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ButtonSamp(
                      text: 'Sign Up',
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return const Dashboard();
                          },
                        ));
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'By clicking Sign Up you agree to our Terms and Conditions',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0),
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
