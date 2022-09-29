import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
          fontFamily: 'Satoshi', fontWeight: FontWeight.w400, fontSize: 16),
      decoration: InputDecoration(
        enabledBorder: myinputborder(),
        border: myinputborder(),
        focusedBorder: myfocusborder(),
        labelText: label,
        prefixIcon: Icon(
          Icons.search,
          color: Color(0xFFB3B3B4),
        ), //icon at head of input
      ),
    );
  }
}

OutlineInputBorder myinputborder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
      //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1,
      ));
}

OutlineInputBorder myfocusborder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Colors.yellow,
        width: 1,
      ));
}
