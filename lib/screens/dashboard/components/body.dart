import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sesa/enum.dart';
import 'package:sesa/screens/dashboard/components/custom_card_kind.dart';
import 'package:sesa/screens/dashboard/components/custom_card_type.dart';

const double kDefaultPadding = 10.0;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body:SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding, vertical: 8),
                  child: Text(
                    'Good Morning',
                    style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Maxwell Anthony',
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0),
                      ),
                      // const Spacer(),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(
                                    "assets/icons/notify.svg")),
                            SvgPicture.asset(
                                "assets/icons/seperate.svg"),
                            InkWell(
                                onTap: () {},
                                child:
                                    SvgPicture.asset("assets/icons/bell.svg")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding, vertical: kDefaultPadding),
                    child: Image.asset(
                      'assets/image/tune.png',
                      fit: BoxFit.contain,
                      width: 400,
                      height: 200,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding, vertical: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Today\'s Activity',
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: const [
                            Text(
                              "View all",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Satoshi-Regular'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width,
                  height: 199,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        color: const Color(0xFFFAFAFA),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomCardKind(
                              visitorName: 'Maxwell Anthony',
                              serialNumber: 'VS09ERTS',
                              //TODO:Write a logic to reuse this components if it now shows as history
                              // image1: 'assets/image/down.png',
                              // image2: 'assets/image/upp.png',
                              // startTime: '12:30 Pm',
                              // stopTime: '3:30 Pm',
                              visitType: 'Artisan',
                              initdate: 'April 7, 2022',
                            ),
                            const Divider(),
                            CustomCardKind(
                              visitorName: 'Naming Ceremony',
                              serialNumber: 'VS09ERTS',
                              // image1: 'assets/image/down.png',
                              // image2: 'assets/image/upp.png',
                              // startTime: '12:30 Pm',
                              // stopTime: '3:30 Pm',
                              visitType: 'Event',
                              initdate: 'April 7, 2022',
                            ),
                            const Divider(),
                            CustomCardKind(
                              visitorName: 'Erik Fire Resources',
                              serialNumber: 'VS09ERTS',
                              // image1: 'assets/image/down.png',
                              // image2: 'assets/image/upp.png',
                              // startTime: '12:30 Pm',
                              // stopTime: '3:30 Pm',
                              visitType: 'Artisan',
                              initdate: 'April 7, 2022',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
            
                  padding: const EdgeInsets.symmetric(
                      vertical: kDefaultPadding, horizontal: kDefaultPadding),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Activity History',
                            style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: const [
                                Text(
                                  "See More",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Satoshi-Regular'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      SizedBox(
                        width: size.width,
                        height: 199,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomCardVisitor(
                                    press: () {  },
                                    visitorName: 'Maxwell Anthony',
                                    // serialNumber: 'VS09ERTS',
                                    //TODO:Write a logic to reuse this components if it now shows as history
                                    image1: 'assets/image/down.png',
                                    image2: 'assets/image/upp.png',
                                    startTime: '12:30 Pm',
                                    stopTime: '3:30 Pm',
                                    visitType: 'Visitor',
                                    initdate: 'April 7, 2022',
                                  ),
                                  const Divider(),
                                  CustomCardVisitor(
                                    visitorName: 'Queen Etim',
                                    // serialNumber: 'VS09ERTS',
                                    startTime: '12:30 Pm',
                                    stopTime: '3:30 Pm',
                                    visitType: 'Visitor',
                                    image1: 'assets/image/down.png',
                                    image2: 'assets/image/upp.png',
                                    initdate: 'March 10, 2022', press: () {  },
                                  ),
                                  const Divider(),
                                  CustomCardVisitor(
                                    press: () {  },
                                    visitorName: 'Victor Etim',
                                    // serialNumber: 'VS09ERTS',
                                    startTime: '12:30 Pm',
                                    stopTime: '3:30 Pm',
                                    visitType: 'Event',
                                    image1: 'assets/image/down.png',
                                    image2: 'assets/image/upp.png',
                                    initdate: 'March 10, 2022',
                                  ),
                                  const Divider(),
                                  CustomCardVisitor(
                                    press: () {  },
                                    visitorName: 'Covany Brown',
                                    // serialNumber: 'VS09ERTS',
                                    startTime: '12:30 Pm',
                                    stopTime: '3:30 Pm',
                                    visitType: 'Event',
                                    image1: 'assets/image/down.png',
                                    image2: 'assets/image/upp.png',
                                    initdate: 'March 10, 2022',
                                  ),
                                  const Divider(),
                                  CustomCardVisitor(
                                    press: () {  },
                                    visitorName: 'Jno Erik',
                                    // serialNumber: 'VS09ERTS',
                                    startTime: '12:30 Pm',
                                    stopTime: '3:30 Pm',
                                    visitType: 'Artisan',
                                    initdate: 'March 10, 2022',
                                    image1: 'assets/image/down.png',
                                    image2: 'assets/image/upp.png',
                                  ),
                                  const Divider(),
                                  CustomCardVisitor(
                                    press: () {  },
                                    visitorName: 'Uno Erik',
                                    // serialNumber: 'VS09ERTS',
                                    startTime: '12:30 Pm',
                                    stopTime: '3:30 Pm',
                                    visitType: 'Event',
                                    initdate: 'March 10, 2022',
                                    image1: 'assets/image/down.png',
                                    image2: 'assets/image/upp.png',
                                  ),
                                  const Divider(),
                                  CustomCardVisitor(
                                    press: () {  },
                                    visitorName: 'John Doe',
                                    // serialNumber: 'VS09ERTS',
                                    startTime: '12:30 Pm',
                                    stopTime: '3:30 Pm',
                                    initdate: 'July 22, 2022',
                                    image1: 'assets/image/down.png',
                                    image2: 'assets/image/upp.png',
                                    visitType: 'Artisan',
                                  ),
                                ],
                              ),
                            ),
                          ),
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
