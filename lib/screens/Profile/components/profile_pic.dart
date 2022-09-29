import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/image/pay.png'),
                    radius: 40.0,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Maxwell Anthony',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    'Block 432, Ajao Estate, Lagos',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.normal,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 30),
            ElevatedButton(
              style: TextButton.styleFrom(
                elevation: 0,
                backgroundColor: Color(0xFFE1ECFE),
                padding: const EdgeInsets.all(20.0),
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
      ),
    );
  }
}
