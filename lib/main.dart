import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sesa/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool show = true;
void main() async {
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool("ON_BOARDING") ?? true;
  runApp(App());
}

class App extends StatelessWidget {
  static var kprimaryColor = const Color(0xFF043FA7);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: kprimaryColor, fontFamily: 'Satoshi'),
      home: show ? OnBoardingPage() : HomePage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool("ON_BOARDING", false);
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/image/pay.png',
      fit: BoxFit.cover,
      height: 1100.0,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _makeFullImage(String assetName) {
    return Image.asset(
      'assets/$assetName',
      fit: BoxFit.fill,
      height: 600.0,
      width: double.infinity,
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
    const bodyStyle = TextStyle(fontSize: 15.0, fontFamily: 'Satoshi-Regular');

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.normal,
          fontFamily: 'Satoshi-Regular'),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: _buildImage('image/logo-special.png', 100),
          ),
        ),
      ),
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
