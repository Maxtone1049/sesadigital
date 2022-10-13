import 'package:flutter/material.dart';

class VoteScreen extends StatelessWidget {
  const VoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Vote',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          toolbarHeight: 50,
          iconTheme: const IconThemeData(color: Colors.black, size: 25.0),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        // body:,
      ),
    );
  }
}