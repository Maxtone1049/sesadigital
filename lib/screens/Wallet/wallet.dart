import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:sesa/components/button.dart';
import 'package:sesa/components/custom_buttom_nav.dart';
import 'package:sesa/enum.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            title: Text(
              'Wallet',
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
          bottomNavigationBar: CustomBottomNav(selectedMenu: MenuState.wallet),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    width: 364,
                    height: 197,
                    decoration: BoxDecoration(
                      color: Color(0xFF0556E5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/image/treat.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 15),
                        Center(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Wallet Balance',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontFamily: 'Satoshi'),
                                  ),
                                  SizedBox(width: 8),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(Icons.visibility_outlined,
                                        size: 30, color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/icons/Naira.svg',
                                        color: Colors.white),
                                    SizedBox(width: 8),
                                    Text(
                                      '900,000.89',
                                      style: TextStyle(
                                        fontFamily: 'Satoshi',
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  OutlinedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 400,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Icon(Icons.close, size: 30),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        'Enter Amount',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          fontFamily: 'Satoshi',
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
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
                                          child: SvgPicture.asset(
                                              'assets/icons/Naira.svg'),
                                        ),
                                        prefixIconColor: Colors.black,
                                        border: InputBorder.none,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color(0xFFC2C9D1)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color(0xFFC2C9D1)),
                                        ),
                                        hintText: 'Amount',
                                      ),
                                      cursorColor: Colors.black.withOpacity(.5),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    ElevatedButton(
                                        child: Text('Continue',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white)),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xFF0660FE),
                                          fixedSize: const Size(364, 53),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          showModalBottomSheet(
                                              backgroundColor: Colors.white,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                  top: Radius.circular(25.0),
                                                ),
                                              ),
                                              context: context,
                                              builder: (context) {
                                                return Container(
                                                  height: 290,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 15),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(height: 20),
                                                        Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              SvgPicture.asset(
                                                                  'assets/icons/Naira.svg',
                                                                  color: Colors
                                                                      .black,
                                                                  width: 18,
                                                                  height: 18),
                                                              Text(
                                                                '10,000',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 32,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                ),
                                                              ),
                                                            ]),
                                                        SizedBox(height: 30),
                                                        Text(
                                                          'Choose a payment method',
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        SizedBox(height: 30),
                                                        InkWell(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            Get.toNamed(
                                                                '/banktf');
                                                          },
                                                          child: Container(
                                                              child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    SvgPicture
                                                                        .asset(
                                                                            'assets/icons/bank.svg'),
                                                                    SizedBox(
                                                                        width:
                                                                            15),
                                                                    Text(
                                                                      'Bank Transfer',
                                                                      style:
                                                                          TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16,
                                                                      ),
                                                                    )
                                                                  ]),
                                                              Icon(
                                                                  Icons
                                                                      .keyboard_arrow_right,
                                                                  size: 30)
                                                            ],
                                                          )),
                                                        ),
                                                        SizedBox(height: 15),
                                                        InkWell(
                                                          onTap: () {},
                                                          child: Container(
                                                              child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(children: [
                                                                SvgPicture.asset(
                                                                    'assets/icons/card.svg'),
                                                                SizedBox(
                                                                    width: 15),
                                                                Text(
                                                                  'Debit Card',
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        16,
                                                                  ),
                                                                )
                                                              ]),
                                                              Icon(
                                                                  Icons
                                                                      .keyboard_arrow_right,
                                                                  size: 30)
                                                            ],
                                                          )),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              });
                                        }),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Text(
                      'Fund Wallet',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size(364, 53),
                      side: BorderSide(width: 1.0, color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    width: 364,
                    child: 
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Transaction History',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          HistoryCardWallet(
                              amount: '5,000',
                              fundkind: 'assets/icons/received.svg',
                              typeoftrans: 'Wallet Fund'),
                          SizedBox(height: 15),
                          HistoryCardWallet(
                              amount: '15,000',
                              fundkind: 'assets/icons/outgo.svg',
                              typeoftrans: 'Energy Token'),
                          SizedBox(height: 15),
                          HistoryCardWallet(
                              amount: '15,000',
                              fundkind: 'assets/icons/outgo.svg',
                              typeoftrans: 'Energy Token'),
                          SizedBox(height: 15),
                          HistoryCardWallet(
                              amount: '15,000',
                              fundkind: 'assets/icons/outgo.svg',
                              typeoftrans: 'Energy Token'),
                          SizedBox(height: 15),
                          Center(
                            child: TextButton(
                              child: Text(
                                'View all',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onPressed: () => Get.toNamed('/transhist'),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class HistoryCardWallet extends StatelessWidget {
  HistoryCardWallet({
    Key? key,
    required this.fundkind,
    required this.amount,
    required this.typeoftrans,
  }) : super(key: key);
  final String fundkind;
  final String amount, typeoftrans;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed('/transdetails'),
      child: Row(children: [
        SvgPicture.asset(fundkind),
        SizedBox(width: 12),
        Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  typeoftrans,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '26 July 2022 2:11 am',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ]),
        ),
        Row(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SvgPicture.asset('assets/icons/Naira.svg'),
          ),
          Text(
            amount,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ]),
      ]),
    );
  }
}
