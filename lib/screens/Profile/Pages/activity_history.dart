import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActivityHistory extends StatelessWidget {
  const ActivityHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black, size: 25.0),
        backgroundColor: Colors.white,
        title: Text(
          'Access History',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Satoshi',
              fontSize: 20.0,
              color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Today',
              style: TextStyle(
                color: Color(0xFF8C8D8E),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              )),
          SizedBox(
            height: 15,
          ),
          AccessHistory(
              code: 'RS09879',
              name: 'Ajibade Michael',
              time: '10:13 am',
              timestamp: 'Check-In'),
          AccessHistory(
              code: 'RS09879',
              name: 'Ajibade Michael',
              time: '08:54 pm',
              timestamp: 'Check-Out'),
        ]),
      ),
    );
  }
}

class AccessHistory extends StatelessWidget {
  const AccessHistory({
    Key? key,
    required this.name,
    required this.code,
    required this.timestamp,
    required this.time,
  }) : super(key: key);
  // final Icon icons;
  final String name, code, timestamp, time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          timestamp == 'Check-In'
              ? Card(
                  color: Color(0xFFEAFBEE),
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Color(0xFFEAFBEE),
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset('assets/icons/import.svg'),
                  ),
                )
              : Card(
                  color: Color(0xFFFFECEB),
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Color(0xFFFFECEB),
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset('assets/icons/export.svg'),
                  ),
                ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Color(0xFF111314),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  code,
                  style: TextStyle(
                      color: Color(0xFF8C8D8E),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              timestamp == 'Check-In'
                  ? Text(
                      timestamp,
                      style: TextStyle(
                          color: Color(0xFF34C759),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )
                  : Text(
                      timestamp,
                      style: TextStyle(
                          color: Color(0xFFFF3B30),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
              Text(time),
            ],
          ),
        ],
      ),
    );
  }
}
