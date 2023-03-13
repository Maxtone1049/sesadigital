import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sesa/screens/Wallet/wallet.dart';

class TransHistory extends StatelessWidget {
  const TransHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Transaction History',
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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 20,
              ),
              HistoryCardWallet(
                  amount: '5,000',
                  fundkind: 'assets/icons/received.svg',
                  typeoftrans: 'Wallet Fund'),
              HistoryCardWallet(
                  amount: '15,000',
                  fundkind: 'assets/icons/outgo.svg',
                  typeoftrans: 'Energy Token'),
              HistoryCardWallet(
                  amount: '15,000',
                  fundkind: 'assets/icons/outgo.svg',
                  typeoftrans: 'Energy Token'),
              HistoryCardWallet(
                  amount: '15,000',
                  fundkind: 'assets/icons/outgo.svg',
                  typeoftrans: 'Energy Token'),
              HistoryCardWallet(
                  amount: '15,000',
                  fundkind: 'assets/icons/outgo.svg',
                  typeoftrans: 'Energy Token'),
              HistoryCardWallet(
                  amount: '15,000',
                  fundkind: 'assets/icons/outgo.svg',
                  typeoftrans: 'Energy Token'),
              HistoryCardWallet(
                  amount: '15,000',
                  fundkind: 'assets/icons/outgo.svg',
                  typeoftrans: 'Energy Token'),
              HistoryCardWallet(
                  amount: '15,000',
                  fundkind: 'assets/icons/outgo.svg',
                  typeoftrans: 'Energy Token'),
              HistoryCardWallet(
                  amount: '15,000',
                  fundkind: 'assets/icons/outgo.svg',
                  typeoftrans: 'Energy Token'),
              HistoryCardWallet(
                  amount: '5,000',
                  fundkind: 'assets/icons/received.svg',
                  typeoftrans: 'Wallet Fund'),
              HistoryCardWallet(
                  amount: '5,000',
                  fundkind: 'assets/icons/received.svg',
                  typeoftrans: 'Wallet Fund'),
              HistoryCardWallet(
                  amount: '5,000',
                  fundkind: 'assets/icons/received.svg',
                  typeoftrans: 'Wallet Fund'),
              HistoryCardWallet(
                  amount: '5,000',
                  fundkind: 'assets/icons/received.svg',
                  typeoftrans: 'Wallet Fund'),
              HistoryCardWallet(
                  amount: '5,000',
                  fundkind: 'assets/icons/received.svg',
                  typeoftrans: 'Wallet Fund'),
              HistoryCardWallet(
                  amount: '5,000',
                  fundkind: 'assets/icons/received.svg',
                  typeoftrans: 'Wallet Fund'),
            ]),
          ),
        ),
      ),
    );
  }
}
