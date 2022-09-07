import 'package:flutter/material.dart';
import 'package:sesa/components/button.dart';
import 'package:sesa/components/custom_textfield.dart';
import 'package:sesa/screens/signup.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    void signIn() {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return SignUp();
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
              SizedBox(
                height: 70.0,
              ),
              Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Satoshi-Regular',
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
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
                  obscureText: false, hintText: 'Enter Email'),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Password',
                style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Satoshi-Regular',
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextfield(
                  obscureText: true, hintText: 'Enter Password'),
              const SizedBox(
                height: 20,
              ),
              ButtonSamp(
                text: 'Sign In',
                onPressed: signIn,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Text(
                  "Forgot Password?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Satoshi-Regular',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
