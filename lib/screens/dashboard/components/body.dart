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

    return Stack(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: 8),
                child: const Text(
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
                  children: [
                    const Text(
                      'Maxwell Anthony',
                      style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0),
                    ),
                    const Spacer(),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(
                                    "assets/icons/notify.svg")),
                          ),
                          Expanded(
                              child: SvgPicture.asset(
                                  "assets/icons/seperate.svg")),
                          Expanded(
                            child: InkWell(
                                onTap: () {},
                                child:
                                    SvgPicture.asset("assets/icons/bell.svg")),
                          ),
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
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today\'s Activity',
                      style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
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
              Expanded(
                child: Container(
                  width: size.width,
                  child: SizedBox(
                    width: size.width,
                    height: 199,
                    child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            color: Color(0xFFFAFAFA),
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
                                Divider(),
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
                                Divider(),
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
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: kDefaultPadding, horizontal: kDefaultPadding),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Activity History',
                              style: TextStyle(
                                  fontFamily: 'Satoshi',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
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
                        SizedBox(
                          height: 9,
                        ),
                        Expanded(
                          child: Container(
                            width: size.width,
                            child: SizedBox(
                              width: size.width,
                              height: 199,
                              child: Container(
                                width: size.width,
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
                                          Divider(),
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
                                          Divider(),
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
                                          Divider(),
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
                                          Divider(),
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
                                          Divider(),
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
                                          Divider(),
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
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
