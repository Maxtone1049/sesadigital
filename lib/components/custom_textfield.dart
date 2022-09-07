import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final bool obscureText;
  final String hintText;

  const CustomTextfield({
    Key? key,
    required this.obscureText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
          color: Colors.black,
          fontFamily: 'Satoshi-Regular',
          fontSize: 16.5,
          fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.blue), //<-- SEE HERE
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.amberAccent),
        ),
        // prefixIcon: Icon(icon, color: Colors.black.withOpacity(.3),),
        hintText: hintText,
      ),
      cursorColor: Colors.black.withOpacity(.5),
    );
  }
}
