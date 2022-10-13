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
      fit: BoxFit.cover,
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
      height: 620.0,
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
    const kprimaryColor = const Color(0xFF043FA7);
    const bodyStyle = TextStyle(
        fontSize: 15.0, fontFamily: 'Satoshi', fontWeight: FontWeight.w500);
    Size size = MediaQuery.of(context).size;
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.w600, fontFamily: 'Satoshi'),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      // globalHeader: Align(
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.only(top: 16, right: 16),
      //       child: _buildImage('image/logo.png', 60),
      //     ),
      //   ),
      // ),
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
            imageFlex: 9,
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
            imageFlex: 9,
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
            imageFlex: 9,
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
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF043FA7))),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done',
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF043FA7))),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
