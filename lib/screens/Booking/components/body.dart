import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sesa/screens/Booking/Pages/Events/components/scheduled_event_card.dart';
import 'package:sesa/screens/Booking/Pages/Visitors/components/scheduled_visitor_card.dart';
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
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFF2F2F7),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: TabBar(
                      labelStyle: TextStyle(
                          fontSize: 12.0,
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
                            child: Text(
                              tabName3 ?? 'DefaultName',
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
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 4),
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
                          height: 260,
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
                                      Get.toNamed('/visit_schedule');
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
                                      Get.toNamed('/visit_today');
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
                                      Get.toNamed('/visit_schedule');
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
                                      Get.toNamed('/visit_schedule');
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
                                  Get.toNamed('/visit_history');
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
                                  Get.toNamed('/visit_history');
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
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: CustomSearchField(
                            label: 'Search for Event',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: Color(0xFFFAFAFA),
                          width: size.width,
                          height: 260,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Scheduled Events',
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
                                  ScheduledEventCard(
                                    tapped: () {
                                      Get.toNamed('/event_schedule');
                                    },
                                    initdate: '10/02/2022',
                                    serialNumber: 'VSPE9928',
                                    visitorName: 'Maxwell Anthony',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ScheduledEventCard(
                                    tapped: () {
                                      Get.toNamed('/event_today');
                                    },
                                    initdate: 'Today',
                                    serialNumber: 'VSPE9928',
                                    visitorName: 'Sheedo Kun',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ScheduledEventCard(
                                    tapped: () {
                                      Get.toNamed('/event_schedule');
                                    },
                                    initdate: '12/12/2022',
                                    serialNumber: 'VSPE9928',
                                    visitorName: 'Voke D Invoker',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ScheduledEventCard(
                                    tapped: () {
                                      Get.toNamed('/event_schedule');
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
                                      'Event History',
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
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Satoshi'),
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
                              // This codes below shows history of event with check in and check out
                              ScheduledEventCard(
                                tapped: () {
                                  Get.toNamed('/event_history');
                                },
                                initdate: 'August, 12 2022',
                                serialNumber: 'VSPE9928',
                                visitorName: 'Edem Precious',
                                startTime: '12:20pm',
                                stopTime: '2:45pm',
                                image1: 'assets/image/down.png',
                              ),
                              SizedBox(height: 10),
                              Divider(),
                              ScheduledEventCard(
                                tapped: () {
                                  Get.toNamed('/event_history');
                                },
                                initdate: 'May, 12 2022',
                                serialNumber: 'VSPE9928',
                                visitorName: 'Tony Prime',
                                startTime: '12:20pm',
                                stopTime: '2:45pm',
                                image1: 'assets/image/down.png',
                              ),
                              Divider(),
                              ScheduledEventCard(
                                tapped: () {
                                  Get.toNamed('/event_history');
                                },
                                initdate: 'May, 12 2022',
                                serialNumber: 'VSPE9928',
                                visitorName: 'Tony Prime',
                                startTime: '12:20pm',
                                stopTime: '2:45pm',
                                image1: 'assets/image/down.png',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(children: <Widget>[
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: CustomSearchField(
                          label: 'Search for Group Access',
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
