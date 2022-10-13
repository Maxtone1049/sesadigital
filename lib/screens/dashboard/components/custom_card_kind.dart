import 'package:flutter/material.dart';

class CustomCardKind extends StatelessWidget {
  CustomCardKind({
    Key? key,
    required this.visitorName,
    required this.serialNumber,
    required this.initdate,
    this.startTime,
    this.stopTime,
    required this.visitType,
  }) : super(key: key);

  final String visitorName;
  final String? serialNumber;
  final String visitType;
  final String initdate;
  final String? startTime, stopTime;

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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 9),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Card(
              color: Color(0xFF2066AF),
              shape: CircleBorder(
                side: BorderSide(
                  color: Color(0xFF2066AF),
                  width: 2.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: visitType == 'Event'
                    ? Icon(
                        Icons.calendar_month,
                        size: 22,
                        color: Colors.white,
                      )
                    : Text(
                        visitorName.length > 2
                            ? visitorName.substring(0, 1) + ''
                            : visitorName,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w700),
                      ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      visitorName,
                      style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      serialNumber ?? initdate,
                      style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontSize: 14,
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
              ),
            ),
            Container(
              decoration: BoxDecoration(
                //ternary condition to check and change container color
                color: visitType == 'Visitor'
                    ? kTextColor
                    : visitType == 'Event'
                        ? kConColorEvent
                        : visitType == 'Artisan'
                            ? kConColorArtisan
                            : isActive,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Text(
                visitType,
                style: TextStyle(
                    //ternary condition to check and change text color
                    color: visitType == 'Event'
                        ? kTextorange
                        : visitType == 'Visitor'
                            ? kConColorVisitor
                            : visitType == 'Artisan'
                                ? kArtisanColor
                                : isActive,
                    fontFamily: 'Satoshi-Regular',
                    fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
