import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/route_manager.dart';
import 'package:sesa/screens/Booking/components/custom_search_field.dart';

class HireArtisan extends StatefulWidget {
  const HireArtisan({super.key});

  @override
  State<HireArtisan> createState() => _HireArtisanState();
}

class _HireArtisanState extends State<HireArtisan> {
  double rate = 2.7;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Hire Artisan',
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
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: CustomSearchField(
              label: 'Search by category',
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: GridView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (.7),
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16),
                children: [
                  ArtisanWidget(
                      called: () => Get.toNamed('/viewartisanpage'),
                      rate: 5.0,
                      artisanName: 'Osigwe Charles',
                      imageUrl: 'assets/image/pay.png',
                      artisanType: 'Plumber'),
                  ArtisanWidget(
                      called: () => Get.toNamed('/viewartisanpage'),
                      rate: 3.7,
                      artisanName: 'Wealth Micheal',
                      imageUrl: 'assets/image/pay.png',
                      artisanType: 'Carpenter'),
                  ArtisanWidget(
                      called: () => Get.toNamed('/viewartisanpage'),
                      rate: 4.5,
                      artisanName: 'Alex Stephen',
                      imageUrl: 'assets/image/pay.png',
                      artisanType: 'Electrician'),
                  ArtisanWidget(
                      called: () => Get.toNamed('/viewartisanpage'),
                      rate: 5.0,
                      artisanName: 'Osigwe Charles',
                      imageUrl: 'assets/image/pay.png',
                      artisanType: 'Plumber'),
                  ArtisanWidget(
                      called: () => Get.toNamed('/viewartisanpage'),
                      rate: 3.7,
                      artisanName: 'Wealth Micheal',
                      imageUrl: 'assets/image/pay.png',
                      artisanType: 'Carpenter'),
                  ArtisanWidget(
                      called: () => Get.toNamed('/viewartisanpage'),
                      rate: 3.7,
                      artisanName: 'Wealth Micheal',
                      imageUrl: 'assets/image/pay.png',
                      artisanType: 'Carpenter'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'See More',
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF7592C1),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class ArtisanWidget extends StatefulWidget {
  const ArtisanWidget({
    Key? key,
    required this.imageUrl,
    required this.artisanName,
    required this.artisanType,
    required this.rate,
    required this.called,
  }) : super(key: key);

  final String imageUrl;
  final double rate;
  final String artisanName;
  final String artisanType;
  final VoidCallback called;

  @override
  State<ArtisanWidget> createState() => _ArtisanWidgetState();
}

class _ArtisanWidgetState extends State<ArtisanWidget> {
  double? _ratingValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 2, color: Color(0xFFF2F2F7)),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(widget.imageUrl),
              radius: 30.0,
            ),
            SizedBox(height: 5),
            Expanded(
              flex: 0,
              child: Text(
                widget.artisanName,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Expanded(
              flex: 0,
              child: Text(
                widget.artisanType,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                flex: 0,
                child: RatingBar(
                    initialRating: widget.rate,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 15.0,
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
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 0,
                child: Text(
                  widget.rate != null ? widget.rate.toString() : 'Rate it!',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Satoshi'),
                ),
              ),
            ]),
            SizedBox(height: 20),
            Expanded(
              flex: 0,
              child: ButtonTheme(
                minWidth: 115,
                height: 38,
                child: ElevatedButton(
                  onPressed: widget.called,
                  child: Text(
                    'View Profile',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        fontFamily: 'Satoshi'),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0660FE),
                    minimumSize: const Size(50, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// testing purpose
// GridView.builder(
//             itemCount: 100,
//             itemBuilder: (context, index) => ItemTile(index),
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 2,
//             ),
//           )
// class ItemTile extends StatelessWidget {
//   final int itemNo;
//   const ItemTile(
//     this.itemNo,
//   );
//   @override
//   Widget build(BuildContext context) {
//     final Color color = Colors.primaries[itemNo % Colors.primaries.length];
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ListTile(
//         tileColor: color.withOpacity(0.3),
//         onTap: () {},
//         leading: Container(
//           width: 50,
//           height: 30,
//           color: color.withOpacity(0.5),
//           child: Placeholder(
//             color: color,
//           ),
//         ),
//         title: Text(
//           'Product $itemNo',
//           key: Key('text_$itemNo'),
//         ),
//       ),
//     );
//   }
// }