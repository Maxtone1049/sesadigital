import 'package:flutter/material.dart';

class ButtonSamp extends StatelessWidget {
  final String text;
  static var colored = const Color(0xFF0660FE);
  final VoidCallback onPressed;

  const ButtonSamp({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
            fontFamily: 'Satoshi-Regular'),
      ),
      style: ElevatedButton.styleFrom(
        primary: colored,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
