import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sesa/components/custom_buttom_nav.dart';
import 'package:sesa/enum.dart';

class ServiceSkin extends StatelessWidget {
  const ServiceSkin({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Services',
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: size.width,
          height: size.height * 0.8,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed('/payment');
                  },
                  child: Container(
                    height: 133,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFE6EFFE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                            color: Color(0xFF2066AF),
                            shape: CircleBorder(
                              side: BorderSide(
                                color: Color(0xFF2066AF),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Icon(
                                Icons.payments_outlined,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 0,
                                    child: Text(
                                      'Estate Payment',
                                      style: TextStyle(
                                          fontFamily: 'Satoshi',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Expanded(
                                    flex: 0,
                                    child: Text(
                                      'Pay for estaste levy, security,\ncontributions e.t.c',
                                      style: TextStyle(
                                          fontFamily: 'Satoshi',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                  ),
                                ]),
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: Icon(Icons.arrow_right_alt)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/artisan');
                  },
                  child: Container(
                    height: 133,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFE6EFFE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                            color: Color(0xFF2066AF),
                            shape: CircleBorder(
                              side: BorderSide(
                                color: Color(0xFF2066AF),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Icon(
                                Icons.engineering_outlined,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 0,
                                    child: Text(
                                      'Hire an Artisan',
                                      style: TextStyle(
                                          fontFamily: 'Satoshi',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Expanded(
                                    flex: 0,
                                    child: Text(
                                      'Get in contact with a reliable\nartisan for your home',
                                      style: TextStyle(
                                          fontFamily: 'Satoshi',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                  ),
                                ]),
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: Icon(Icons.arrow_right_alt)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/energy');
                  },
                  child: Container(
                    height: 133,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFE6EFFE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                            color: Color(0xFF2066AF),
                            shape: CircleBorder(
                              side: BorderSide(
                                color: Color(0xFF2066AF),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Icon(
                                Icons.electrical_services,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 0,
                                    child: Text(
                                      'Buy Energy Token',
                                      style: TextStyle(
                                          fontFamily: 'Satoshi',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Expanded(
                                    flex: 0,
                                    child: Text(
                                      'Pay and get your token\nnumber easily with Comfort',
                                      style: TextStyle(
                                          fontFamily: 'Satoshi',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                  ),
                                ]),
                          ),
                          SizedBox(width: 27),
                          Align(
                              alignment: Alignment.topRight,
                              child: Icon(Icons.arrow_right_alt)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/vote');
                  },
                  child: Container(
                    height: 133,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFE6EFFE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Card(
                            color: Color(0xFF2066AF),
                            shape: CircleBorder(
                              side: BorderSide(
                                color: Color(0xFF2066AF),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Icon(
                                Icons.how_to_vote,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 0,
                                    child: Text(
                                      'Voting & Election',
                                      style: TextStyle(
                                          fontFamily: 'Satoshi',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Expanded(
                                    flex: 0,
                                    child: Text(
                                      'Easily vote for a candidate of\nyour choice when the poll is up ',
                                      style: TextStyle(
                                          fontFamily: 'Satoshi',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                  ),
                                ]),
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: Icon(Icons.arrow_right_alt)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNav(selectedMenu: MenuState.services),
    );
  }
}
