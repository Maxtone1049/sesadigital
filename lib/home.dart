import 'package:flutter/material.dart';
import 'package:sesa/screens/SignUp/signup.dart';
import 'package:sesa/screens/sign_in/views/login/views/signin.dart';

class HomePage extends StatelessWidget {
  static var primaryColor = const Color(0xFF043FA7);

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 600.0,
            width: size.width,
            decoration: const BoxDecoration(
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
                const Expanded(
                  child: Text(
                    'A digital plartform allowing you to automate \nall estate functionalities digitally.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Satoshi-Regular',
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
              padding: const EdgeInsets.fromLTRB(50, 60, 50, 0),
              child: Row(
                children: <Widget>[
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: const BorderSide(
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
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
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
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return const SignUp();
                        },
                      ));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 15.5,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Satoshi-Regular'),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
