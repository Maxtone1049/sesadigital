import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sesa/components/button.dart';
import 'package:sesa/components/custom_textfield.dart';
import 'package:sesa/screens/signup.dart';

class Verification extends StatelessWidget {
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
                  Icons.close,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return SignUp();
                    },
                  ));
                },
              ),
            ),
            SizedBox(
              height: 90,
            ),
            PinVend(),
          ],
        ),
      ),
    );
  }
}

class PinVend extends StatelessWidget {
  const PinVend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void signIn() {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return PasswordPage();
        },
      ));
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 3.0,
          ),
          Text(
            'Verification',
            style: TextStyle(
                fontSize: 28.0,
                fontFamily: 'Satoshi-Regular',
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Enter the verification code sent to your email',
            style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Satoshi-Regular',
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 50,
          ),
          Pinput(
            length: 5,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            defaultPinTheme: PinTheme(
              height: 60.0,
              width: 60.0,
              textStyle: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Satoshi-Regular',
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                border: Border.all(
                  color: Colors.black.withOpacity(0.5),
                  width: 1.0,
                ),
              ),
            ),
            focusedPinTheme: PinTheme(
              height: 60.0,
              width: 60.0,
              textStyle: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          ButtonSamp(
            text: 'Submit',
            onPressed: signIn,
          ),
        ],
      ),
    );
  }
}

class PasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Set Password',
                    style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'Satoshi-Regular',
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Satoshi-Regular',
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextfield(
                      obscureText: true, hintText: 'Password'),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Re-type Password',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Satoshi-Regular',
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextfield(
                      obscureText: true, hintText: 'Confirm Password'),
                  const SizedBox(height: 40,),
                  RadioListTile(
                    title: Text("Minimum of 8 characters",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily:'Satoshi-Regular',
                      fontSize: 12.0
                    ),
                    ),
                     value: "Minimum of 8 characters",
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                   RadioListTile(
                    title: Text("One UPPERCASE character",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily:'Satoshi-Regular',
                      fontSize: 12.0
                    ),
                    ),
                     value: "One UPPERCASE character",
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                   RadioListTile(
                    title: Text("One unique character (e.g: '!@#%^&')",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily:'Satoshi-Regular',
                      fontSize: 12.0
                    ),
                    ),
                     value: "One unique character (e.g: '!@#%^&')",
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height:20,
                  ),
                  ButtonSamp(
                    text: 'Sign Up',
                onPressed:(){} ,
                  ),
                    const SizedBox(
                    height:50,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text('By clicking Sign Up you agree to our Terms and Conditions',
                    style: TextStyle(
                      fontFamily:'Satoshi-Regular',
                      fontWeight: FontWeight.w400,
                      fontSize:14.0
                    ),
                    )
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
