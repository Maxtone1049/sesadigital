import 'package:flutter/material.dart';
import 'package:sesa/screens/Booking/booking.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          iconTheme: const IconThemeData(color: Colors.black, size: 25.0),
              automaticallyImplyLeading: true,
              elevation: 0,
          title: const Text(
            'Event details',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: 'Satoshi'),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            PopupMenuButton(
              elevation: 0,
              itemBuilder: (context) {
                return [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Row(
                      children: const [
                        Icon(Icons.close),
                        SizedBox(width: 5),
                        Text(
                          "Cancel Visit",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontFamily: 'Satoshi'),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Row(
                      children: const [
                        Icon(Icons.logout_outlined),
                        SizedBox(width: 5),
                        Text(
                          "Sign out visitor",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontFamily: 'Satoshi'),
                        ),
                      ],
                    ),
                  ),
                ];
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 15),
                DetailsHandle(
                  label: 'Event Type',
                  identify: 'Birthday',
                ),
                Divider(),
                DetailsHandle(
                    label: 'Event Type', identify: 'Chisom 1 year Birthday'),
                Divider(),
                DetailsHandle(
                  label: 'Event Address',
                  identify: 'Flat 12, Block 7, Zone 6',
                ),
                Divider(),
                DetailsHandle(label: 'Expected Guest Nos', identify: '20'),
                Divider(),
                DetailsHandle(label: 'Event Start Date', identify: '16 July 2022  10:00 am'),
                Divider(),
                DetailsHandle(label: 'Event End Date', identify: '16 July 2022  6:00 pm'),
                Divider(),
                DetailsHandle(label: 'Message', identify: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.'),

                //TODO:Write a widget for proper checking out and other details below
                // DetailsHandle(label: 'Check in time', identify: '2:18 pm'),
                // Divider(),
                // DetailsHandle(label: 'Mode of Entry', identify: 'Car'),
                // Divider(),
                // DetailsHandle(label: 'Nos of Occupants', identify: '1'),
                // Divider(),
                // DetailsHandle(
                //     label: 'Security on duty', identify: 'Emeka Ernest'),
                // Divider(),
                // DetailsHandle(label: 'Check out time', identify: 'N/A'),
                // Divider(),
                // DetailsHandle(label: 'Security on duty', identify: 'N/A'),
                // Divider(),
              const  SizedBox(
                  height: 9,
                ),
                // Padding(
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       color: const Color(0xFFFAFAFA),
                //       borderRadius: BorderRadius.circular(8),
                //     ),
                //     width: size.width,
                //     height: 346,
                //     child: Center(
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Image.asset('assets/image/qrcode.png'),
                //        const  SizedBox(height: 10),
                //           Container(
                //             decoration: BoxDecoration(
                //               border: Border.all(
                //                   width: 2, style: BorderStyle.solid),
                //               borderRadius: BorderRadius.circular(5),
                //             ),
                //             child: Padding(
                //               padding: const EdgeInsets.all(10.0),
                //               child: Text(
                //                 'EV09786',
                //                 style: TextStyle(
                //                     fontSize: 16,
                //                     fontFamily: 'Satoshi',
                //                     fontWeight: FontWeight.w500),
                //               ),
                //             ),
                //           ),
                //           const SizedBox(height: 14),
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //             children: [
                //               InkWell(
                //                 onTap: () {},
                //                 child: Container(
                //                   width: 158,
                //                   height: 53,
                //                   decoration: BoxDecoration(
                //                       color: Color(0xFFEBF2FF),
                //                       borderRadius: BorderRadius.circular(4)),
                //                   padding: EdgeInsets.all(12.0),
                //                   child: Row(
                //                     mainAxisAlignment:
                //                         MainAxisAlignment.spaceAround,
                //                     children:[
                //                     Icon(
                //                         Icons.copy,
                //                         color: Color(0xFF0660FE),
                //                       ),
                //                       Text(
                //                         'Copy',
                //                         style: TextStyle(
                //                             color: Color(0xFF0660FE),
                //                             fontSize: 18,
                //                             fontFamily: 'Satoshi',
                //                             fontWeight: FontWeight.w500),
                //                       ),
                //                     ],
                //                   ),
                //                 ),
                //               ),
                //               InkWell(
                //                 onTap: () {},
                //                 child: Container(
                //                   width: 158,
                //                   height: 53,
                //                   decoration: BoxDecoration(
                //                       color: Color(0xFFEBF2FF),
                //                       borderRadius: BorderRadius.circular(4)),
                //                   padding: EdgeInsets.all(12.0),
                //                   child: Row(
                //                     mainAxisAlignment:
                //                         MainAxisAlignment.spaceAround,
                //                     children: [
                //                       Icon(
                //                         Icons.share,
                //                         color: Color(0xFF0660FE),
                //                       ),
                //                       Text(
                //                         'Share',
                //                         style: TextStyle(
                //                             color: Color(0xFF0660FE),
                //                             fontSize: 18,
                //                             fontFamily: 'Satoshi',
                //                             fontWeight: FontWeight.w500),
                //                       ),
                //                     ],
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailsHandle extends StatelessWidget {
  const DetailsHandle({
    Key? key,
    required this.label,
    required this.identify,
    this.checkedout,
  }) : super(key: key);
  final String label, identify;
  final String? checkedout;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: 'Satoshi',
                fontSize: 16,
                color: Color(0xFF8C8D8E),
              ),
            ),
          ),
          Expanded(
            child: Text(
              identify,
                textAlign: TextAlign.right,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Satoshi',
                  fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
