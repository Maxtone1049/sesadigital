import 'package:flutter/material.dart';
import 'package:sesa/components/custom_buttom_nav.dart';
import 'package:sesa/enum.dart';
import 'package:sesa/screens/Profile/components/profile_button.dart';
import 'package:sesa/screens/Profile/components/profile_pic.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  static var colored = const Color(0xFFDADADA).withOpacity(0.15);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Account',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Satoshi',
                  fontSize: 25.0,
                ),
              ),
            ),
            SizedBox(height: 40),
            ProfilePic(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    ProfileButton(
                        icon: 'assets/icons/Frame1.svg',
                        text: 'My Household',
                        press: () {}),
                    Divider(),
                    ProfileButton(
                        icon: 'assets/icons/Frame2.svg',
                        text: 'Notifications',
                        press: () {}),
                    Divider(),
                    ProfileButton(
                        icon: 'assets/icons/Frame3.svg',
                        text: 'Access Settings',
                        press: () {}),
                    Divider(),
                    ProfileButton(
                        icon: 'assets/icons/Frame4.svg',
                        text: 'Security',
                        press: () {}),
                    Divider(),
                    ProfileButton(
                        icon: 'assets/icons/Frame5.svg',
                        text: 'Help Center',
                        press: () {}),
                    Divider(),
                    ProfileButton(
                        icon: 'assets/icons/Frame6.svg',
                        text: 'Rules & Regulations',
                        press: () {}),
                    Divider(),
                    ProfileButton(
                        icon: 'assets/icons/Frame7.svg',
                        text: 'About Us',
                        press: () {}),
                    Divider(),
                    ProfileButton(
                        icon: 'assets/icons/Frame8.svg',
                        text: 'Log Out',
                        press: () {}),
                    Divider(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNav(selectedMenu: MenuState.user),
    );
  }
}
