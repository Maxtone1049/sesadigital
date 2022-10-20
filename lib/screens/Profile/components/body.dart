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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black, size: 25.0),
        backgroundColor: Colors.white,
        title: Text(
          'Account',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Satoshi',
              fontSize: 20.0,
              color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              ProfilePic(logintype: Check.land),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Maxwell Anthony',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Block 12 Zone A, Ajao Estate',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Text(
                      'SESA Digital V3.0.4',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFB3B3B4),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNav(selectedMenu: MenuState.user),
    );
  }
}
