import 'package:flutter/material.dart';
import 'package:sesa/components/button.dart';
import 'package:sesa/components/custom_textfield.dart';
import 'package:sesa/screens/Verification/email_verfication.dart';
import 'package:sesa/screens/sign_in/views/login/views/signin.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../../entity/login_entity/login_entity.dart';
import 'login_view_model.dart';



@FormView(
    fields: [FormTextField(name: 'userdata'), FormTextField(name: 'password')])

class SignIn extends StatelessWidget with $SignIn{
   SignIn({super.key});

//   @override
//   State<SignIn> createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
  //  void pushIn() {
  //     // login(
  //     //     emailController.text.toString(), passwordController.text.toString());
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
  //       return const Dashboard();
  //     }));
  //   }

    void forgotPass(context) {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return ForgotPass();
        },
      ));
    }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => LoginViewModel(context),
        builder: (_, LoginViewModel model, __) =>  Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Form(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Spacer(),
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'Satoshi-Regular',
                        fontWeight: FontWeight.w500),
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
                  CustomTextfield(
                      controller: userdataController,
                      obscureText: false,
                      hintText: 'Enter Email'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Satoshi-Regular',
                        fontWeight: FontWeight.w500),
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
                    onPressed: ()=>model.loginUser(LoginEntity(
                                        userdata: userdataController.text,
                                        password: passwordController.text,
                                        deviceToken:
                                            'eKCFnjrLSR6bDWuQ9NcMf-:APA91bHMKJoF-mWEsq7iGIB-p0nh27W8ubP4skRm7iwpxAL3uk3zbCgwgAximmzsGpXn7aoZlAWLclicG-QADTuT3IkyUydSrm8sVknOvayPxXSaw_-rb0-XaNnxVSt_BpOtwUdHvyoB')),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed:()=> forgotPass(context),
                    child: const Text(
                      "Forgot Password?",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontFamily: 'Satoshi-Regular',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                   const Spacer(),
                ],
              ),
            ),
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
              const Text(
                'Reset Password',
                style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Satoshi-Regular',
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Please enter your email address registered with SESA Digitals',
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Satoshi-Regular',
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Email',
                style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Satoshi-Regular',
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
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
