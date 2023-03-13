import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({
    required this.logintype,
    Key? key,
  }) : super(key: key);
  final Check logintype;

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

enum Check { resident, land, normalresident }

class _ProfilePicState extends State<ProfilePic> {
  Check _check = Check.land;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/image/pay.png'),
            radius: 40.0,
          ),
          SizedBox(width: 30),
          widget.logintype == Check.land
              ? Row(
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        elevation: 0,
                        fixedSize: const Size(0, 38),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0),
                              ),
                            ),
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 300,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                          child: Text('Profiles',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight:
                                                      FontWeight.w600))),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/image/pay.png'),
                                              radius: 30.0,
                                            ),
                                            SizedBox(width: 15),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('Resident',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  Text(
                                                      'Block 12 Zone A, Ajao Estate',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                ],
                                              ),
                                            ),
                                            Radio<Check>(
                                              //only check box
                                              value: Check.resident, //unchecked
                                              groupValue: _check,
                                              onChanged: ((Check? value) =>
                                                  setState(() {
                                                    value = _check;
                                                  })),
                                            ),
                                          ]),
                                      Row(children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'assets/image/pay.png'),
                                          radius: 30.0,
                                        ),
                                        SizedBox(width: 15),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Landlord',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                              Text(
                                                  'Block 19 Zone C, Ajao Estate',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ],
                                          ),
                                        ),
                                        Radio<Check>(
                                          //only check box
                                          value: Check.land, //unchecked
                                          groupValue: _check,
                                          onChanged: ((Check? value) =>
                                              setState(() {
                                                value = _check;
                                              })),
                                        ),
                                      ])
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: SvgPicture.asset('assets/icons/access.svg'),
                    ),
                    SizedBox(width: 5),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        elevation: 0,
                        fixedSize: const Size(115, 38),
                        backgroundColor: Color(0xFFE1ECFE),
                      ),
                      onPressed: () => Get.toNamed('/viewprofile'),
                      child: Text('View Profile',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                              color: Color(0xFF0E2D4E),
                              fontFamily: 'Satoshi')),
                    ),
                  ],
                )
              : ElevatedButton(
                  style: TextButton.styleFrom(
                    elevation: 0,
                    fixedSize: const Size(115, 38),
                    backgroundColor: Color(0xFFE1ECFE),
                  ),
                  onPressed: () => Get.toNamed('/viewprofile'),
                  child: Text('View Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                          color: Color(0xFF0E2D4E),
                          fontFamily: 'Satoshi')),
                ),
        ],
      ),
    );
  }
}
