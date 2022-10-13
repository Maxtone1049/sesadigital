import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewWidget extends StatefulWidget {
  const ReviewWidget({
    Key? key,
    required this.imageuri,
    required this.date,
    required this.name,
    required this.rate,
    required this.comment,
  }) : super(key: key);

  final String imageuri;
  final String date;
  final String name;
  final double rate;
  final String comment;

  @override
  State<ReviewWidget> createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  double? _rates ;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 153,
        width: 326,
        margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 1, color: Color(0xFF8C8D8E)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(widget.imageuri),
                          radius: 15.0,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            RatingBar(
                                initialRating: widget.rate,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15.0,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.0),
                                ratingWidget: RatingWidget(
                                    full: const Icon(Icons.star,
                                        size: 2, color: Colors.orange),
                                    half: const Icon(Icons.star_half,
                                        color: Colors.orange, size: 2),
                                    empty: const Icon(Icons.star_outline,
                                        color: Colors.orange, size: 2)),
                                onRatingUpdate: (value) {
                                  setState(() {
                                    _rates = value;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    widget.date,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Satoshi'),
                  ),
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                widget.comment,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Satoshi'),
              ),
            ],
          ),
        ));
  }
}
