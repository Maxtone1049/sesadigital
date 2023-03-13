import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sesa/screens/SignIn/signin.dart';
import 'package:sesa/screens/SignUp/signup.dart';

class HomePage extends StatelessWidget {
  static var primaryColor = const Color(0xFF0660FE);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: size.height * 0.7,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/Union.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Expanded(
                    child: Image.asset(
                      'assets/image/logo-special.png',
                      fit: BoxFit.cover,
                      height: 91.0,
                      width: 351,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Text(
                      'A digital platform allowing you to automate \nall estate functionalities digitally.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: const Size(174, 56),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          side: BorderSide(
                            width: 1.0,
                            color: Colors.blue,
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed('/signin');
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 15.5,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Satoshi'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed('/signup');
                        },
                        style: TextButton.styleFrom(
                          elevation: 0,
                          fixedSize: const Size(174, 56),
                          backgroundColor: Color(0xFF0660FE),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 15.5,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Satoshi'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
