import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/route_manager.dart';
import 'package:sesa/components/button.dart';
import 'package:sesa/screens/Services/Pages/Artisan/components/review.dart';

class ArtisanBody extends StatefulWidget {
  ArtisanBody({super.key, required this.rate});

  final double rate;

  @override
  State<ArtisanBody> createState() => _ArtisanBodyState();
}

class _ArtisanBodyState extends State<ArtisanBody> {
  double? _ratingValue;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Profile',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                  child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/image/artisan.png'),
                    radius: 40.0,
                  ),
                  SizedBox(height: 15),
                  Text('Charles Osigwe',
                      style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                  SizedBox(height: 5),
                  Text('Electrician',
                      style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF8C8D8E))),
                  SizedBox(height: 5),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    RatingBar(
                        initialRating: widget.rate,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20.0,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        ratingWidget: RatingWidget(
                            full: const Icon(Icons.star,
                                size: 2, color: Colors.orange),
                            half: const Icon(Icons.star_half,
                                color: Colors.orange, size: 2),
                            empty: const Icon(Icons.star_outline,
                                color: Colors.orange, size: 2)),
                        onRatingUpdate: (value) {
                          setState(() {
                            _ratingValue = value;
                          });
                        }),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.rate != null ? widget.rate.toString() : 'Rate it!',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Satoshi'),
                    ),
                  ]),
                ],
              )),
              SizedBox(height: 20),
              Text(
                'Address',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Satoshi',
                    color: Color(0xFF8C8D8E)),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'No 4 , Adebo Street',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Satoshi',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Row(children: [
                      Icon(Icons.location_on_outlined, size: 15),
                      Text(
                        'Abuja',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Satoshi',
                        ),
                      )
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 13),
              Text(
                'Phone Number',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Satoshi',
                    color: Color(0xFF8C8D8E)),
              ),
              SizedBox(height: 9),
              Row(
                children: [
                  Icon(Icons.phone, size: 20, color: Color(0xFF184F87)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '+234 904 980 8904',
                    style: TextStyle(
                        color: Color(0xFF184F87),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Satoshi'),
                  )
                ],
              ),
              SizedBox(height: 50),
              ButtonSamp(
                  text: 'Book Artisan',
                  onPressed: () => Get.toNamed('/addartisan')),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reviews & Ratings',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Satoshi'),
                  ),
                  TextButton(
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
                              height: 900,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 50),
                                    Center(
                                        child: Column(
                                      children: [
                                        Text(
                                          'How would you rate your artisan sevice?',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                            fontFamily: 'Satoshi',
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 19),
                                        RatingBar(
                                            initialRating: 0.0,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 30.0,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 1.0),
                                            ratingWidget: RatingWidget(
                                                full: const Icon(Icons.star,
                                                    size: 2,
                                                    color: Colors.orange),
                                                half: const Icon(
                                                    Icons.star_half,
                                                    color: Colors.orange,
                                                    size: 2),
                                                empty: const Icon(
                                                    Icons.star_outline,
                                                    color: Colors.orange,
                                                    size: 2)),
                                            onRatingUpdate: (value) {
                                              setState(() {
                                                _ratingValue = value;
                                              });
                                            }),
                                      ],
                                    )),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      'Write a Review',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        fontFamily: 'Satoshi',
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(height: 8),
                                    TextField(
                                      maxLines: 6,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Satoshi',
                                          fontSize: 16.5,
                                          fontWeight: FontWeight.w500),
                                      obscureText: false,
                                      decoration: InputDecoration(
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
                                        hintText: 'Review Text',
                                      ),
                                      cursorColor: Colors.black.withOpacity(.5),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        OutlinedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            style: OutlinedButton.styleFrom(
                                              fixedSize: const Size(161, 52),
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xFF0B5FFF)),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            ),
                                            child: Text(
                                              'Dismiss',
                                              style: TextStyle(
                                                  color: Color(0xFF0B5FFF),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Satoshi'),
                                            )),
                                        ElevatedButton(
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
                                                    height: 300,
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 30),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_outline_sharp,
                                                              size: 90,
                                                              color: Color(
                                                                  0xFF20B16A)),
                                                          SizedBox(height: 10),
                                                          Text(
                                                            'Thank you for submitting your\n review',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'Satoshi',
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                          SizedBox(
                                                            height: 25,
                                                          ),
                                                          ButtonSamp(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              text:
                                                                  'Back to profile'),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF0660FE),
                                            fixedSize: const Size(161, 52),
                                          ),
                                          child: Text(
                                            'Send',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Satoshi'),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Text(
                      'Write a Review',
                      style: TextStyle(
                          color: Color(0xFF0B5FFF),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Satoshi'),
                    ),
                  ),
                ],
              ),
              Container(
                width: size.width,
                height: 200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ReviewWidget(
                        comment:
                            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
                        rate: 3.5,
                        date: '7 Aug, 2022',
                        imageuri: 'assets/image/pay.png',
                        name: 'Kofo Adams',
                      ),
                      ReviewWidget(
                        comment:
                            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
                        rate: 2.0,
                        date: '16 May, 2022',
                        imageuri: 'assets/image/pay.png',
                        name: 'Merry Jones',
                      ),
                      ReviewWidget(
                        comment:
                            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
                        rate: 2.1,
                        date: '21 July, 2022',
                        imageuri: 'assets/image/pay.png',
                        name: 'Drew Flecther',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
