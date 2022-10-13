import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EnergyToken extends StatelessWidget {
  const EnergyToken({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Buy Energy Token',
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Text(
                'Pay for & get meter token with easily.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Token Amount *',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Satoshi',
                    fontSize: 16.5,
                    fontWeight: FontWeight.w500),
                obscureText: false,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset('assets/icons/Naira.svg'),
                  ),
                  prefixIconColor: Colors.black,
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xFFC2C9D1)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xFFC2C9D1)),
                  ),
                  hintText: 'Amount',
                ),
                cursorColor: Colors.black.withOpacity(.5),
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Pay Bill',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 18.0,
                      fontFamily: 'Satoshi'),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0660FE),
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
