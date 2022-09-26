import 'package:flutter/material.dart';

class VisitorScheduled extends StatelessWidget {
  const VisitorScheduled({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          iconTheme: const IconThemeData(color: Colors.black, size: 25.0),
          elevation: 0,
          title: const Text(
            'Visitor details (Scheduled)',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: 'Satoshi'),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            PopupMenuButton(
              elevation: 0,
              itemBuilder: (context) {
                return [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Row(
                      children: const [
                        Icon(Icons.close),
                        SizedBox(width: 5),
                        Text(
                          "Cancel Visit",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontFamily: 'Satoshi'),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Row(
                      children: const [
                        Icon(Icons.logout_outlined),
                        SizedBox(width: 5),
                        Text(
                          "Sign out visitor",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontFamily: 'Satoshi'),
                        ),
                      ],
                    ),
                  ),
                ];
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 15),
                DetailsHandle(
                  label: 'Name',
                  identify: 'Evelyn Theresa',
                ),
                Divider(),
                DetailsHandle(
                    label: 'Phone Number', identify: '+2349065536542'),
                Divider(),
                DetailsHandle(
                  label: 'Access Type',
                  identify: 'Multiple Entry',
                ),
                Divider(),
                DetailsHandle(label: 'Access Date', identify: 'Today'),
                Divider(),
                DetailsHandle(
                    label: 'Message',
                    identify:
                        'Adebayo is a fair man with full beards, not too tall and has a base voice.'),
                Divider(),
                //TODO:Write a widget for proper checking out and other details below
                // DetailsHandle(label: 'Mode of Entry', identify: 'Car'),
                // Divider(),
                // DetailsHandle(label: 'Nos of Occupants', identify: '1'),
                // Divider(),
                // DetailsHandle(
                //     label: 'Security on duty', identify: 'Emeka Ernest'),
                // Divider(),
                // DetailsHandle(label: 'Check out time', identify: 'N/A'),
                // Divider(),
                // DetailsHandle(label: 'Security on duty', identify: 'N/A'),
                // Divider(),
                const SizedBox(
                  height: 9,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: size.width,
                    height: 346,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/image/qrcode.png'),
                          const SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'VS09786',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 158,
                                  height: 53,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFEBF2FF),
                                      borderRadius: BorderRadius.circular(4)),
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.copy,
                                        color: Color(0xFF0660FE),
                                      ),
                                      Text(
                                        'Copy',
                                        style: TextStyle(
                                            color: Color(0xFF0660FE),
                                            fontSize: 18,
                                            fontFamily: 'Satoshi',
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 158,
                                  height: 53,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFEBF2FF),
                                      borderRadius: BorderRadius.circular(4)),
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.share,
                                        color: Color(0xFF0660FE),
                                      ),
                                      Text(
                                        'Share',
                                        style: TextStyle(
                                            color: Color(0xFF0660FE),
                                            fontSize: 18,
                                            fontFamily: 'Satoshi',
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
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
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                identify,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Satoshi',
                    fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}