import 'package:flutter/material.dart';
import 'package:sesa/screens/sign_in/signin.dart';
import 'package:sesa/screens/signup.dart';

class HomePage extends StatelessWidget {
  static var primaryColor = const Color(0xFF043FA7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 650.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/Union.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  Image.asset('assets/image/logo-special.png'),
                  Expanded(
                    child: Text(
                      'A digital plartform allowing you to automate all estate functionalities digitally.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Satoshi-Regular',
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(90, 30, 90, 0),
            child: Row(
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(
                      width: 1.0,
                      color: Colors.blue,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return SignIn();
                      },
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 15.5,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontFamily: 'Satoshi-Regular'),
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return SignUp();
                      },
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 15.5,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Satoshi-Regular'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
