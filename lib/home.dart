import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sesa/screens/SignIn/signin.dart';
import 'package:sesa/screens/SignUp/signup.dart';

class HomePage extends StatelessWidget {
  static var primaryColor = const Color(0xFF043FA7);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 600.0,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/Union.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/image/logo-special.png',
                  fit: BoxFit.cover,
                  height: 200.0,
                ),
                Expanded(
                  child: Text(
                    'A digital plartform allowing you to automate \nall estate functionalities digitally.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(50, 60, 50, 0),
              child: Row(
                children: <Widget>[
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(
                        width: 1.0,
                        color: Colors.blue,
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed('/signin');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 15.5,
                            color: Colors.black,
                            fontWeight:FontWeight.w500,
                            fontFamily: 'Satoshi'),
                      ),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/signup');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 15.5,
                            fontWeight:FontWeight.w500,
                            fontFamily: 'Satoshi'),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
