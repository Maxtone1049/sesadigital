import 'package:flutter/material.dart';


class EstatePaymentHandler extends StatelessWidget {
  EstatePaymentHandler({
    Key? key,
    required this.size,
    required this.paymentkind,
    required this.paymentid,
    required this.deadline,
    required this.action,
  }) : super(key: key);

  final Size size;
  final String paymentkind;
  final String paymentid;
  final String deadline;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                paymentkind,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Satoshi'),
              ),
              SizedBox(height: 7),
              Text(paymentid,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Satoshi')),
            ]),
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Text(
                'Payment Deadline',
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 7),
              Text(deadline,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Satoshi')),
            ]),
          ],
        ),
      ),
    );
  }
}

class PaidHandle extends StatelessWidget {
  PaidHandle({
    Key? key,
    required this.size,
    required this.paymentkind,
    required this.paymentid,
    required this.deadline,
    required this.action,
  }) : super(key: key);

  final Size size;
  final String paymentkind;
  final String paymentid;
  final String deadline;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                paymentkind,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Satoshi'),
              ),
              SizedBox(height: 7),
              Text(paymentid,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Satoshi')),
            ]),
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Text(
                'Pay Date',
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 7),
              Text(deadline,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Satoshi')),
            ]),
          ],
        ),
      ),
    );
  }
}
