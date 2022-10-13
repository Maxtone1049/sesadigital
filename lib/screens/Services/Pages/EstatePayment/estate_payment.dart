import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sesa/screens/Services/components/paid_handle.dart';

class EstatePayment extends StatelessWidget {
  const EstatePayment({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Estate Payment',
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
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFF2F2F7),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: TabBar(
                      labelStyle: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w600), //For Selected tab
                      unselectedLabelStyle: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w500),
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Color(0xFF2066AF),
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white),
                      tabs: [
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Current',
                            ),
                          ),
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Paid',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Column(
                          children: [
                            EstatePaymentHandler(
                                action: () {
                                  Get.toNamed('/paypage');
                                },
                                size: size,
                                deadline: '12 Aug, 2022',
                                paymentkind: 'Estate Security Levy',
                                paymentid: 'P785577005'),
                            Divider(),
                            EstatePaymentHandler(
                                action: () {
                                  Get.toNamed('/choosepart');
                                },
                                size: size,
                                deadline: '08 July, 2022',
                                paymentkind: 'Block Party Donation',
                                paymentid: 'P785577005'),
                            Divider(),
                            EstatePaymentHandler(
                                action: () {
                                  Get.toNamed('/paypage');
                                },
                                size: size,
                                deadline: '21 Aug, 2022',
                                paymentkind: 'Estate Yearly Dues',
                                paymentid: 'P0245576802'),
                            Divider(),
                            EstatePaymentHandler(
                                action: () {
                                  Get.toNamed('/choosepart');
                                },
                                size: size,
                                deadline: '14 June, 2022',
                                paymentkind: 'Estate Security Levy',
                                paymentid: 'P0245576802'),
                            Divider(),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Column(
                          children: [
                            PaidHandle(
                                action: () {
                                  Get.toNamed('/paid');
                                },
                                size: size,
                                deadline: '14 June, 2022',
                                paymentkind: 'Estate Security Levy',
                                paymentid: 'P0245576802'),
                            Divider(),
                            PaidHandle(
                                action: () {
                                  Get.toNamed('/paid');
                                },
                                size: size,
                                deadline: '14 June, 2022',
                                paymentkind: 'Estate Security Levy',
                                paymentid: 'P0245576802'),
                            Divider(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
