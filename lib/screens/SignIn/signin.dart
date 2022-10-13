import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:http/http.dart';
import 'package:sesa/components/button.dart';
import 'package:sesa/components/custom_textfield.dart';
import 'package:sesa/screens/Verification/email_verfication.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // void login(String email, password) async {
  //   try {
  //     Response response = await post(
  //         Uri.parse('https://real.sesadigital.com/api/loginResident'),
  //         body: {'email': email, 'password': password});
  //     if (response.statusCode == 200) {
  //       var data = jsonDecode(response.body.toString());
  //       print(data['message']);
  //       print('Account Logged In');
  //       Navigator.pushReplacement(context,
  //           MaterialPageRoute(builder: (context) {
  //         return Dashboard();
  //       }));
  //     } else {
  //       print('Invalid Credentials');
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    void pushIn() {
      // login(
      //     emailController.text.toString(), passwordController.text.toString());
     Get.toNamed('/dashboard');
    }

    void forgotPass() {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return ForgotPass();
        },
      ));
    }

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Spacer(),
              Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Email Address',
                style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextfield(
                  controller: emailController,
                  obscureText: false,
                  hintText: 'Enter Email'),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Password',
                style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextfield(
                  controller: passwordController,
                  obscureText: true,
                  hintText: 'Enter Password'),
              const SizedBox(
                height: 20,
              ),
              ButtonSamp(
                text: 'Sign In',
                onPressed: pushIn,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: forgotPass,
                child: Text(
                  "Forgot Password?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w600),
                ),
              ),
               Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPass extends StatefulWidget {
  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    void veriPage() {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return EmailVeri();
        },
      ));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  iconSize: 30,
                  icon: const Icon(
                    Icons.close,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return SignIn();
                      },
                    ));
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Reset Password',
                style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Please enter your email address registered with SESA Digitals',
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Email',
                style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextfield(
                  obscureText: false, hintText: 'Email Address'),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonSamp(
                text: 'Reset',
                onPressed: veriPage,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
