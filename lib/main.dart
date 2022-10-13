import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sesa/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

bool show = true;
void main() async {
  // below codes for not showing the onboarding screen anymore after first Launch
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool("ON_BOARDING") ?? true;
  runApp(App());
}

class App extends StatefulWidget {
  static var kprimaryColor = const Color(0xFF043FA7);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return GetMaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primaryColor: App.kprimaryColor, fontFamily: 'Satoshi'),
      // home: show ? OnBoardingPage() : HomePage(),
      initialRoute: show
          ? '/splash'
          : show
              ? '/onboard'
              : '/home',
      getPages: appRoutes(),
    );
  }
}
