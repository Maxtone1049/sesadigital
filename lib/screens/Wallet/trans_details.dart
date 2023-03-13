import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransDetails extends StatelessWidget {
  const TransDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Transaction Details',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        toolbarHeight: 50,
        iconTheme: const IconThemeData(color: Colors.black, size: 25.0),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 7),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            SizedBox(height: 15),
            DetailsHandle(
              label: 'Purpose',
              identify: 'Estate Security Levy',
            ),
            Divider(),
            DetailsHandle(
              label: 'From',
              identify: 'Wallet',
            ),
            Divider(),
            DetailsHandle(
              label: 'Amount',
              identify: '5,000',
            ),
            Divider(),
            DetailsHandle(
              label: 'Date',
              identify: '13 June, 2022, 11:19 am',
            ),
            Divider(),
            DetailsHandle(
              label: 'Reference',
              identify: 'TY00_IV78R4FF89_8876GFJ',
            ),
            Divider(),
            DetailsHandle(
              label: 'Status',
              identify: 'Paid',
            ),
            Divider(),
            DetailsHandle(
              label: 'Amount balance',
              // checkedout: 'assets/icons/Naira.svg',
              identify: '45,000',
            ),
            Divider(),
          ]),
        ),
      ),
    ));
  }
}

class DetailsHandle extends StatelessWidget {
  const DetailsHandle({
    Key? key,
    required this.label,
    required this.identify,
    this.checkedout,
  }) : super(key: key);
  final String label, identify;
  final String? checkedout;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: 'Satoshi',
                fontSize: 16,
                color: Color(0xFF8C8D8E),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (label == 'Amount' || label == 'Amount balance')
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: SvgPicture.asset('assets/icons/Naira.svg'),
                    ),
                    identify == 'Paid'
                        ? Text(
                            identify,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Satoshi',
                                color: Color(0xFF34C759),
                                fontSize: 14),
                          )
                        : Text(
                            identify,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Satoshi',
                                fontSize: 14),
                          ),
                  ])
                else
                  identify == 'Paid'
                      ? Expanded(
                        child: Text(
                            identify,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Satoshi',
                                color: Color(0xFF34C759),
                                fontSize: 14),
                          ),
                      )
                      : Expanded(
                        child: Text(
                            identify,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Satoshi',
                                fontSize: 14),
                          ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
