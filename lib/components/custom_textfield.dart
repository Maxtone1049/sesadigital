import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final TextEditingController? controller;

  const CustomTextfield({
    Key? key,
    required this.obscureText,
     this.controller,
    required this.hintText,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(
          color: Colors.black,
          fontFamily: 'Satoshi',
          fontSize: 16.5,
          fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        border: InputBorder.none,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Color(0xFFC2C9D1)), 
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.amberAccent),
        ),
        // prefixIcon: Icon(icon, color: Colors.black.withOpacity(.3),),
        hintText: hintText,
      ),
      cursorColor: Colors.black.withOpacity(.5),
    );
  }
}
