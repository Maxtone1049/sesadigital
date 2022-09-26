import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key? key,
    required this.text,
    required this.press,
    required this.icon,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.all(30),
          backgroundColor: Colors.white,
          minimumSize: const Size.fromHeight(50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Row(
          children: [
            SvgPicture.asset(icon, width: 30),
            SizedBox(width: 20),
            Expanded(
                child: Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0),
            )),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
