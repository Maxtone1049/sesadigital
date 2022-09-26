import 'package:flutter/material.dart';
import 'package:sesa/screens/Booking/Pages/Visitors/visitor_details_scheduled.dart';
import 'package:sesa/screens/Booking/Pages/Visitors/visitor_details_today.dart';
import 'package:sesa/screens/Booking/Pages/Visitors/visitor_history.dart';
import 'package:sesa/screens/Booking/components/custom_search_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTabDrawer(
        length: 3,
        tabName1: 'Visitors',
        tabName2: 'Event',
        tabName3: 'Group Access');
  }
}

class CustomTabDrawer extends StatelessWidget {
  const CustomTabDrawer({
    Key? key,
    required this.length,
    this.tabName1,
    this.tabName2,
    this.tabName3,
  }) : super(key: key);
  final int length;
  final String? tabName1, tabName2, tabName3;
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: length,
      child: Container(
        color: Color(0xFFF2F2F7),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFF2F2F7),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: TabBar(
                      labelStyle: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w600), //For Selected tab
                      unselectedLabelStyle: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w500),
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Color(0xFF2066AF),
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white),
                      tabs: [
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              tabName1 ?? 'DefaultName',
                            ),
                          ),
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              tabName2 ?? 'DefaultName',
                            ),
                          ),
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Expanded(
                              child: Text(
                                tabName3 ?? 'DefaultName',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: CustomSearchField(
                            label: 'Search for Visitors',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: Color(0xFFFAFAFA),
                          width: size.width,
                          height: 360,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Scheduled Visitors',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          fontStyle: FontStyle.normal,
                                          fontFamily: 'Satoshi'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  ScheduledVisitorCard(
                                    tapped: () {
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(
                                        builder: (context) {
                                          return VisitorDetails();
                                        },
                                      ));
                                    },
                                    initdate: '10/02/2022',
                                    serialNumber: 'VSPE9928',
                                    visitorName: 'Maxwell Anthony',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ScheduledVisitorCard(
                                    tapped: () {
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(
                                        builder: (context) {
                                          return VisitorDetails();
                                        },
                                      ));
                                    },
                                    initdate: 'Today',
                                    serialNumber: 'VSPE9928',
                                    visitorName: 'Sheedo Kun',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ScheduledVisitorCard(
                                    tapped: () {
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(
                                        builder: (context) {
                                          return VisitorScheduled();
                                        },
                                      ));
                                    },
                                    initdate: '12/12/2022',
                                    serialNumber: 'VSPE9928',
                                    visitorName: 'Voke D Invoker',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ScheduledVisitorCard(
                                    tapped: () {
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(
                                        builder: (context) {
                                          return VisitorScheduled();
                                        },
                                      ));
                                    },
                                    initdate: '12/12/2022',
                                    serialNumber: 'VSPE9928',
                                    visitorName: 'Filix Falst',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Visitor History',
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
                                                color: Color(0xFF2066AF),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
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
                              // This codes below shows history of visitors with check in and check out
                              ScheduledVisitorCard(
                                tapped: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                    builder: (context) {
                                      return VisitorHistory();
                                    },
                                  ));
                                },
                                initdate: 'August, 12 2022',
                                serialNumber: 'VSPE9928',
                                visitorName: 'Edem Precious',
                                startTime: '12:20pm',
                                stopTime: '2:45pm',
                                image1: 'assets/image/down.png',
                                image2: 'assets/image/upp.png',
                              ),
                              SizedBox(height: 10),
                              Divider(),
                              ScheduledVisitorCard(
                                tapped: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                    builder: (context) {
                                      return VisitorHistory();
                                    },
                                  ));
                                },
                                initdate: 'May, 12 2022',
                                serialNumber: 'VSPE9928',
                                visitorName: 'Tony Prime',
                                startTime: '12:20pm',
                                stopTime: '2:45pm',
                                image1: 'assets/image/down.png',
                                image2: 'assets/image/upp.png',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    CustomSearchField(
                      label: 'Search for Event',
                    ),
                  ]),
                  Column(children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    CustomSearchField(
                      label: 'Search for Group Access',
                    ),
                  ]),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScheduledVisitorCard extends StatelessWidget {
  ScheduledVisitorCard({
    Key? key,
    required this.visitorName,
    required this.serialNumber,
    required this.initdate,
    this.startTime,
    this.stopTime,
    this.image1,
    this.image2,
    required this.tapped,
  }) : super(key: key);
  final String visitorName;
  final VoidCallback tapped;
  final String serialNumber;
  final String initdate;
  final String? startTime, stopTime;
  final String? image1, image2;
  static var kConColorVisitor = Color(0xFFAF52DE);
  static var kConColorEvent = Color(0xFFFFE6C2);
  static var kConColorArtisan = Color(0xFFD7F2FE);
  @override
  Widget build(BuildContext context) {
    final Color kTextColor = Color(0xFFF0DBFA);
    final Color kTextorange = Color(0xFFFF9500);
    final Color kArtisanColor = Color(0xFF5AC8FA);
    final Color isActive = Colors.brown;
    final Color isNormal = Colors.white;
    return InkWell(
      onTap: tapped,
      child: Container(
        height: 100,
        width: 369,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Expanded(
          child: Row(
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
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    visitorName.length > 2
                        ? visitorName.substring(0, 1) + ''
                        : visitorName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Satoshi',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        visitorName,
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Expanded(
                      child: Text(
                        serialNumber,
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Row(children: [
                            SizedBox(width: 1),
                            Text(
                              startTime ?? '',
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ]),
                          SizedBox(
                            width: 5,
                          ),
                          Row(
                            children: [
                              SizedBox(width: 1),
                              Text(
                                stopTime ?? '',
                                style: TextStyle(
                                  fontFamily: 'Satoshi',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Expanded(
                  child: Text(
                    initdate,
                    style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
