import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sesa/enum.dart';
import 'package:get/route_manager.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);
  final MenuState selectedMenu;
  static var kPrimaryColor = const Color(0xFF808080);

  @override
  Widget build(BuildContext context) {
    final Color isActive = Color(0xFF0660FE);
    return Container(
      height: 72,
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Get.toNamed('/dashboard');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    Get.toNamed('/dashboard');
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
                Text(
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
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed('/booking');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Get.toNamed('/booking');
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
                Text(
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
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed('/services');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Get.toNamed('/services');
                  },
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
                Text(
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
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed('/wallet');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Get.toNamed('/wallet');
                    },
                    tooltip: 'Wallet',
                    icon: SvgPicture.asset(
                      "assets/icons/wallet.svg",
                      height: 19,
                      width: 22,
                      color: MenuState.wallet == selectedMenu
                          ? isActive
                          : kPrimaryColor,
                    )),
                Text(
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
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed('/user');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Get.toNamed('/user');
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
                Text(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
