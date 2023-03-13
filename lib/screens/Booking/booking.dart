import 'package:flutter/material.dart';
import 'package:sesa/components/custom_buttom_nav.dart';
import 'package:sesa/enum.dart';
import 'package:sesa/screens/Booking/components/body.dart';

import '../../components/custom_buttom_sheet.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Bookings',
            style: TextStyle(
                fontFamily: 'Satoshi',
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: const Body(),
        bottomNavigationBar:
            const CustomBottomNav(selectedMenu: MenuState.book),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF2066AF),
          onPressed: () {
            showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25.0),
                  ),
                ),
                context: context,
                builder: (context) {
                  return const CustomBottomSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
