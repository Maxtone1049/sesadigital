import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sesa/screens/Booking/Pages/Visitors/add_visitors.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 350,
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, -50),
            blurRadius: 90,
            color: Color(0xFFDADADA).withOpacity(0.10),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return AddVisitor();
                    },
                  ));
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/add.svg',
                      width: 60,
                    ),
                    SizedBox(width: 25),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Schedule a visitor',
                            style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Amet minim mollit non deserunt',
                            style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/cal.svg',
                      width: 60,
                    ),
                    SizedBox(width: 25),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Schedule an event',
                            style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Amet minim mollit non deserunt',
                            style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/cal.svg',
                      width: 60,
                    ),
                    SizedBox(width: 25),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Create a group access code',
                            style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Amet minim mollit non deserunt',
                            style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
