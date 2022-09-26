import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sesa/components/custom_textfield.dart';
import 'package:sesa/screens/SignIn/signin.dart';
import 'package:sesa/screens/dashboard/dashboard.dart';

class EmailVeri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String otpText = '12345';
    final otpController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
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
                        return ForgotPass();
                      },
                    ));
                  },
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Text(
                'Verification',
                style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Satoshi-Regular',
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Enter the verification code sent to your email',
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Satoshi-Regular',
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 40,
              ),
              Pinput(
                length: 5,
                controller: otpController,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                defaultPinTheme: PinTheme(
                  width: 60.0,
                  height: 60.0,
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black.withOpacity(0.5),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                errorTextStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Satoshi-Regular',
                    fontSize: 15.0,
                    color: Colors.red),
                errorPinTheme: PinTheme(
                  width: 65.0,
                  height: 65.0,
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.red.withOpacity(0.5),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onTap: () {
                  otpController.clear();
                },
                validator: (otp) {
                  if (otp == otpText) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('OTP is Valid'),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.blue,
                    ));
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return Dashboard();
                      },
                    ));
                  } else {
                    return 'OTP is invalid, Try again';
                  }
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
