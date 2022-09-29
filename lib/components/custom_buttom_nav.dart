import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sesa/enum.dart';
import 'package:sesa/screens/Booking/booking.dart';
import 'package:sesa/screens/Profile/profile_screen.dart';
import 'package:sesa/screens/dashboard/dashboard.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);
  final MenuState selectedMenu;
  static var kPrimaryColor = const Color(0xFF808080);

  @override
  Widget build(BuildContext context) {
    final Color isActive = const Color(0xFF0660FE);
    return Container(
      height: 85,
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: const BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(40),
        //   topRight: Radius.circular(40),
        // ),
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(0, -15),
        //     blurRadius: 20,
        //     color: Color(0xFFDADADA).withOpacity(0.15),
        //   ),
        // ]
      ),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return const Dashboard();
                  },
                ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return const Dashboard();
                        },
                      ));
                    },
                    tooltip: 'Home',
                    icon: SvgPicture.asset(
                      "assets/icons/home.svg",
                      height: 19,
                      width: 22,
                      color: MenuState.home == selectedMenu
                          ? isActive
                          : kPrimaryColor,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Home',
                      style: TextStyle(
                          fontWeight: MenuState.home == selectedMenu
                              ? FontWeight.w600
                              : FontWeight.w500,
                          fontFamily: 'Satoshi',
                          fontSize: 14.0,
                          color: MenuState.home == selectedMenu
                              ? isActive
                              : kPrimaryColor),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return const BookingScreen();
                  },
                ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return const BookingScreen();
                          },
                        ));
                      },
                      tooltip: 'Bookings',
                      icon: SvgPicture.asset(
                        "assets/icons/book.svg",
                        height: 19,
                        width: 22,
                        color: MenuState.book == selectedMenu
                            ? isActive
                            : kPrimaryColor,
                      )),
                  Expanded(
                    child: Text(
                      'Bookings',
                      style: TextStyle(
                          fontWeight: MenuState.book == selectedMenu
                              ? FontWeight.w600
                              : FontWeight.w500,
                          fontFamily: 'Satoshi',
                          fontSize: 14.0,
                          color: MenuState.book == selectedMenu
                              ? isActive
                              : kPrimaryColor),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    tooltip: 'Services',
                    icon: SvgPicture.asset(
                      "assets/icons/services.svg",
                      height: 19,
                      width: 22,
                      color: MenuState.services == selectedMenu
                          ? isActive
                          : kPrimaryColor,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Services',
                      style: TextStyle(
                          fontWeight: MenuState.services == selectedMenu
                              ? FontWeight.w600
                              : FontWeight.w500,
                          fontFamily: 'Satoshi',
                          fontSize: 14.0,
                          color: MenuState.services == selectedMenu
                              ? isActive
                              : kPrimaryColor),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      tooltip: 'Wallet',
                      icon: SvgPicture.asset(
                        "assets/icons/wallet.svg",
                        height: 19,
                        width: 22,
                        color: MenuState.wallet == selectedMenu
                            ? isActive
                            : kPrimaryColor,
                      )),
                  Expanded(
                    child: Text(
                      'Wallet',
                      style: TextStyle(
                          fontWeight: MenuState.wallet == selectedMenu
                              ? FontWeight.w600
                              : FontWeight.w500,
                          fontFamily: 'Satoshi',
                          fontSize: 14.0,
                          color: MenuState.wallet == selectedMenu
                              ? isActive
                              : kPrimaryColor),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return ProfileScreen();
                  },
                ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return ProfileScreen();
                        },
                      ));
                    },
                    tooltip: 'Account',
                    icon: SvgPicture.asset(
                      "assets/icons/user.svg",
                      height: 19,
                      width: 22,
                      color: MenuState.user == selectedMenu
                          ? isActive
                          : kPrimaryColor,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Account',
                      style: TextStyle(
                          fontWeight: MenuState.user == selectedMenu
                              ? FontWeight.w600
                              : FontWeight.w500,
                          fontFamily: 'Satoshi',
                          fontSize: 14.0,
                          color: MenuState.user == selectedMenu
                              ? isActive
                              : kPrimaryColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
