import 'package:flutter/material.dart';
import 'package:sesa/components/button.dart';
import 'package:sesa/components/custom_textfield.dart';
import 'package:sesa/screens/sign_in/signin.form.dart';
import 'package:sesa/screens/sign_in/views/login/views/login_view_model.dart';
import 'package:sesa/screens/signup.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'entity/login_entity/login_entity.dart';

@FormView(
    fields: [FormTextField(name: 'userdata'), FormTextField(name: 'password')])
class SignIn extends StatelessWidget with $SignIn {
  SignIn({super.key});
  void signIn(context) {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return const SignUp();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => LoginViewModel(context),
        builder: (_, LoginViewModel model, __) => Scaffold(
              backgroundColor: Colors.white,
              body: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Form(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 70.0,
                          ),
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
                            obscureText: false,
                            hintText: 'Enter Email',
                            controller: userdataController,
                          ),
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
                            obscureText: true,
                            hintText: 'Enter Password',
                            controller: passwordController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ButtonSamp(
                            text: 'Sign In',
                            onPressed: () {
                              // if (model.formKey.currentState!.validate()) {
                                model.loginUser(LoginEntity(
                                    userdata: userdataController.text,
                                    password: passwordController.text,
                                    deviceToken:
                                        'eKCFnjrLSR6bDWuQ9NcMf-:APA91bHMKJoF-mWEsq7iGIB-p0nh27W8ubP4skRm7iwpxAL3uk3zbCgwgAximmzsGpXn7aoZlAWLclicG-QADTuT3IkyUydSrm8sVknOvayPxXSaw_-rb0-XaNnxVSt_BpOtwUdHvyoB'));
                              // }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Expanded(
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
                  )),
            ));
  }
}
