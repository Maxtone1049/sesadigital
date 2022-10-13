import 'package:flutter/material.dart';

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: Card(
                      color: Color(0xFF2066AF),
                      shape: CircleBorder(
                        side: BorderSide(
                          color: Color(0xFF2066AF),
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          visitorName.length > 2
                              ? visitorName.substring(0, 1) + ''
                              : visitorName,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Satoshi',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        visitorName,
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        serialNumber,
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w300),
                      ),
                      Row(
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
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                initdate,
                style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
