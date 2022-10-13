import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sesa/components/button.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    this.logintype,
    Key? key,
  }) : super(key: key);
  final String? logintype;
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
          logintype == 'Landlord'
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
                                      SelectResident(
                                          urlimg: 'assets/image/pay.png',
                                          residenttype: 'Resident',
                                          address:
                                              'Block 12 Zone A, Ajao Estate'),
                                      SelectResident(
                                          urlimg: 'assets/image/pay.png',
                                          residenttype: 'Landlord',
                                          address:
                                              'Block 19 Zone C, Ajao Estate'),
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
                      onPressed: () {},
                      child: Text('View Profile',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
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
                  onPressed: () {},
                  child: Text('View Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Color(0xFF0E2D4E),
                          fontFamily: 'Satoshi')),
                ),
        ],
      ),
    );
  }
}

class SelectResident extends StatelessWidget {
  const SelectResident({
    required this.urlimg,
    required this.residenttype,
    required this.address,
    Key? key,
  }) : super(key: key);
  final String urlimg, residenttype, address;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){},
      child: Row(children: [
        CircleAvatar(
          backgroundImage: AssetImage(urlimg),
          radius: 30.0,
        ),
        SizedBox(width:15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(residenttype,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            Text(address,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
          ],
        )
      ]),
    );
  }
}
