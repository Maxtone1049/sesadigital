import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) async {
    // once this information is verified, then it moves on to the home screen for signup or login
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool("ON_BOARDING", false);
    Get.toNamed('/home');
  }

  Widget _buildFullscreenImage(String assetName) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      'assets/$assetName',
      fit: BoxFit.contain,
      height: double.infinity,
      width: size.width,
      alignment: Alignment.center,
    );
  }

  Widget _makeFullImage(String assetName) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      'assets/$assetName',
      fit: BoxFit.fill,
      height: size.height*0.6,
      width: size.width,
      alignment: Alignment.topCenter,
    );
  }

  Widget coverScreen(String assetName) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      'assets/$assetName',
      fit: BoxFit.cover,
      height: 130.0,
      width: 130.0,
      alignment: Alignment.topCenter,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset(
      'assets/$assetName',
      width: width,
    );
  }

  @override
  Widget build(BuildContext context) {
    const kprimaryColor = const Color(0xFF0660FE);
    const bodyStyle = TextStyle(
        fontSize: 16.0,
        fontFamily: 'Satoshi',
        fontWeight: FontWeight.w400,
        color: Colors.black);
    Size size = MediaQuery.of(context).size;
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: 'Satoshi'),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Emergency Panic Button",
          body:
              "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
          image: Align(
              alignment: Alignment.topCenter,
              child: _makeFullImage('image/alarm.png')),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 5,
          ),
        ),
        PageViewModel(
          title: "Make Estate Payments",
          body:
              "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
          image: Align(
              alignment: Alignment.topCenter,
              child: _makeFullImage('image/pay.png')),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 5,
          ),
        ),
        PageViewModel(
          title: "Hire Artisans",
          body:
              "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
          image: Align(
              alignment: Alignment.topCenter,
              child: _makeFullImage('image/artisan.png')),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 5,
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color(0xFF0660FE))),
      next: Container(
        width: 120,
        height: 46,
        decoration: BoxDecoration(
          color: Color(0xFF0660FE),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            'Next',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ]),
      ),
      done: Container(
        width: 120,
        height: 46,
        decoration: BoxDecoration(
          color: Color(0xFF0660FE),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            'Next',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ]),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(10),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(10.0, 10.0),
        activeColor: Color(0xFF0660FE),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
