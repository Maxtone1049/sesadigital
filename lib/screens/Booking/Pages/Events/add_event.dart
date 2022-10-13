import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:intl/intl.dart';
import 'package:sesa/components/button.dart';
import 'package:sesa/components/custom_textfield.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  @override
  Widget build(BuildContext context) {
    TextEditingController dateinput = TextEditingController();
    TextEditingController endDate = TextEditingController();
    TextEditingController timeinput = TextEditingController();
    TextEditingController endTime = TextEditingController();
    dateinput.text = "";
    Size size = MediaQuery.of(context).size;
    String dropdownvalue = '+234';
    var items = [
      '+234',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Add an event ',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
          centerTitle: true,
          toolbarHeight: 50,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black, size: 25.0),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  'Type of event *',
                  style: TextStyle(
                      color: Color(0xFF111314),
                      fontSize: 14,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
                CustomTextfield(
                    obscureText: false, hintText: 'Placeholder Text'),
                SizedBox(height: 15),
                Text(
                  'Event Name *',
                  style: TextStyle(
                      color: Color(0xFF111314),
                      fontSize: 14,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
                CustomTextfield(
                    obscureText: false, hintText: 'Placeholder Text'),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Event Address *',
                      style: TextStyle(
                          color: Color(0xFF111314),
                          fontSize: 14,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Use home Address',
                      style: TextStyle(
                          color: Color(0xFF111314),
                          fontSize: 14,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                CustomTextfield(
                    obscureText: false, hintText: 'Placeholder Text'),
                SizedBox(height: 15),
                Text(
                  'Expected Number of guest',
                  style: TextStyle(
                      color: Color(0xFF111314),
                      fontSize: 14,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
                CustomTextfield(
                    obscureText: false, hintText: 'Placeholder Text'),
                // DecoratedBox(
                //   decoration: BoxDecoration(
                //     border: Border.all(width: 1, color: Color(0xFFC2C9D1)),
                //     borderRadius: BorderRadius.circular(5),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 15),
                //     child: DropdownButton(
                //       isExpanded: true,
                //       items: [
                //         DropdownMenuItem(
                //           child: Text(
                //             ' ',
                //             style: TextStyle(
                //                 fontFamily: 'Satoshi',
                //                 fontSize: 16,
                //                 fontWeight: FontWeight.w600),
                //           ),
                //         ),
                //       ],
                //       onChanged: (value) {},
                //       hint: Text('Select Access type'),
                //       icon: const Icon(Icons.keyboard_arrow_down),
                //     ),
                //   ),
                // ),
                SizedBox(height: 15),
                Text(
                  'Event Duration *',
                  style: TextStyle(
                      color: Color(0xFF111314),
                      fontSize: 14,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Start Date',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                fontFamily: 'Satoshi',
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextField(
                              controller: dateinput,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xFFC2C9D1)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.amberAccent),
                                  ),
                                  prefixIcon: Icon(Icons.calendar_today),
                                  prefixIconColor: Colors.black,
                                  labelStyle: TextStyle(
                                      fontFamily: 'Satoshi',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  labelText: "dd/mm/yy"),
                              readOnly: true,
                              onTap: () async {
                                DateTime? beginDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2101));
                                if (beginDate != null) {
                                  print(beginDate);
                                  String formattedDate =
                                      DateFormat('dd-MM-yyyy')
                                          .format(beginDate);
                                  // print(formattedDate);
                                  dateinput.text = formattedDate;
                                } else {
                                  print('Start Date is not Selected');
                                }
                              },
                              cursorColor: Colors.black.withOpacity(.5),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'End Date',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                fontFamily: 'Satoshi',
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextField(
                              controller: endDate,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xFFC2C9D1)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.amberAccent),
                                  ),
                                  prefixIcon: Icon(Icons.calendar_today),
                                  prefixIconColor: Colors.black,
                                  labelStyle: TextStyle(
                                      fontFamily: 'Satoshi',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  labelText: "dd/mm/yy"),
                              readOnly: true,
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2101));
                                if (pickedDate != null) {
                                  print(pickedDate);
                                  String formattedDate =
                                      DateFormat('dd-MM-yyyy')
                                          .format(pickedDate);
                                  // print(formattedDate);
                                  endDate.text = formattedDate;
                                } else {
                                  print('Stop Date is not Selected');
                                }
                              },
                              cursorColor: Colors.black.withOpacity(.5),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Start Time'),
                            SizedBox(
                              height: 8,
                            ),
                            TextField(
                              controller: timeinput,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xFFC2C9D1)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.amberAccent),
                                  ),
                                  prefixIcon: Icon(Icons.schedule),
                                  prefixIconColor: Colors.black,
                                  labelStyle: TextStyle(
                                      fontFamily: 'Satoshi',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  labelText: "00:00"),
                              readOnly: true,
                              onTap: () async {
                                TimeOfDay? pickedTime = await showTimePicker(
                                  initialTime: TimeOfDay.now(),
                                  context: context,
                                );
                                if (pickedTime != null) {
                                  // print(pickedTime.format(context));
                                  // DateTime parsedTime = DateFormat.jm().parse(
                                  //     pickedTime.format(context).toString());
                                  // print(parsedTime);
                                  // String formattedTime =
                                  //     DateFormat('hh:mm:ss').format(parsedTime);
                                  // print(formattedTime);
                                  timeinput.text = pickedTime.format(context);
                                } else {
                                  print("Start time not selected");
                                }
                              },
                              cursorColor: Colors.black.withOpacity(.5),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('End Time'),
                            SizedBox(
                              height: 8,
                            ),
                            TextField(
                              controller: endTime,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xFFC2C9D1)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.amberAccent),
                                  ),
                                  prefixIcon: Icon(Icons.schedule),
                                  prefixIconColor: Colors.black,
                                  labelStyle: TextStyle(
                                      fontFamily: 'Satoshi',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  labelText: "00:00"),
                              readOnly: true,
                              onTap: () async {
                                TimeOfDay? pickTime = await showTimePicker(
                                  initialTime: TimeOfDay.now(),
                                  context: context,
                                );
                                if (pickTime != null) {
                                  // print(pickTime.format(context));
                                  // DateTime parTime = DateFormat.jm().parse(
                                  //     pickTime.format(context).toString());
                                  // print(parTime);
                                  // String formatTime =
                                  //     DateFormat('hh:mm:ss').format(parTime);
                                  endTime.text = pickTime.format(context);
                                } else {
                                  print("End time not selected");
                                }
                              },
                              cursorColor: Colors.black.withOpacity(.5),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  'Message to estate manager',
                  style: TextStyle(
                      color: Color(0xFF111314),
                      fontSize: 14,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 103,
                  child: TextField(
                    maxLines: 8,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Satoshi',
                        fontSize: 16.5,
                        fontWeight: FontWeight.w500),
                    obscureText: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFFC2C9D1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFFC2C9D1)),
                      ),
                      // prefixIcon: Icon(icon, color: Colors.black.withOpacity(.3),),
                      hintText: 'Placeholder Text',
                    ),
                    cursorColor: Colors.black.withOpacity(.5),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Maximumum of 60 characters',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                ButtonSamp(
                    //TODO logic to send event details to endpoint
                    onPressed: () {
                      showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 300,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check_circle_outline,
                                    color: Color(0xFF20B16A),
                                    size: 80,
                                  ),
                                  Center(
                                    child: Text(
                                      'Your event has been sent to the estate manager for approval',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        fontFamily: 'Satoshi',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  ButtonSamp(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        Get.toNamed('/event_today');
                                      },
                                      text: 'View Details'),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    text: 'Add Event'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
