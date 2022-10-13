import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

class BankTransfer extends StatelessWidget {
  const BankTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController diaryControllerWithPackageOne =
        TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(),
            Text('Bank Transfer',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                )),
            SizedBox(height: 10),
            Text(
              'Make a transfer to any of the account numbers\n below to fund your SESA wallet immediately.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 50),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sterling Bank',
                        style: TextStyle(
                          color: Color(0xFF050606),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '8437194308',
                        style: TextStyle(
                            color: Color(0xFF1C5B9C),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      // Container(
                      //   width: 100,
                      //   height: 100,
                      //   child: TextField(
                      // enabled: false,
                      //     controller: diaryControllerWithPackageOne,
                      //     decoration: const InputDecoration(
                      //       labelText: 'Enter diary input for today',
                      //       border: OutlineInputBorder(),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  InkWell(
                      onTap: () async {
                        FlutterClipboard.copy(
                                diaryControllerWithPackageOne.text)
                            .then(
                          (value) {
                            return ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Text Copied'),
                              ),
                            );
                          },
                        );
                      },
                      child: Icon(Icons.content_copy,
                          size: 30, color: Color(0xFF1C5B9C)))
                ]),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Done',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0660FE),
                fixedSize: const Size(364, 53),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
