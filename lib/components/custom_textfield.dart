import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final TextEditingController? controller;
  final IconData? input;

  const CustomTextfield({
    Key? key,
    required this.obscureText,
    required this.hintText,
    this.controller,
    this.input,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      style: TextStyle(
          color: Colors.black,
          fontFamily: 'Satoshi',
          fontSize: 16.5,
          fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Color(0xFFC2C9D1)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.amberAccent),
        ),
        suffixIcon: Icon(
          input,
          color: Colors.black.withOpacity(.3),
        ),
        hintText: hintText,
      ),
      cursorColor: Colors.black.withOpacity(.5),
    );
  }
}
