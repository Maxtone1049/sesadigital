import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sesa/components/button.dart';
import 'package:sesa/components/custom_textfield.dart';
import 'package:sesa/screens/Booking/Pages/Visitors/visitor_details_today.dart';

class AddVisitor extends StatelessWidget {
  const AddVisitor({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController dateinput = TextEditingController();
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
          title: const Text(
            'Add Visitor',
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              const Text(
                'Full Name *',
                style: TextStyle(
                    color: Color(0xFF111314),
                    fontSize: 14,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 5),
              CustomTextfield(obscureText: false, hintText: 'Placeholder Text'),
              const SizedBox(height: 15),
              const Text(
                'Phone Number *',
                style: TextStyle(
                    color: Color(0xFF111314),
                    fontSize: 14,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: const Color(0xFFC2C9D1)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: DropdownButton(
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: const TextStyle(
                                  fontFamily: 'Satoshi',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {},
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  const Expanded(
                    child: TextField(
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
                              BorderSide(width: 1, color: Colors.amberAccent),
                        ),
                        // prefixIcon: Icon(icon, color: Colors.black.withOpacity(.3),),
                        hintText: 'Number',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 19,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF0B5FFF),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 50,
                        height: 50,
                        child: const Icon(Icons.person, color: Colors.white)),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                'Access Type *',
                style: TextStyle(
                    color: Color(0xFF111314),
                    fontSize: 14,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 5),
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xFFC2C9D1)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    items: const [
                      DropdownMenuItem(
                        child: Text(
                          ' ',
                          style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                    onChanged: (value) {},
                    hint: const Text('Select Access type'),
                    icon: const Icon(Icons.keyboard_arrow_down),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Access Period *',
                style: TextStyle(
                    color: Color(0xFF111314),
                    fontSize: 14,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 5),
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xFFC2C9D1)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    items: const [
                      DropdownMenuItem(
                        child: Text(
                          ' ',
                          style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                    onChanged: (value) {},
                    hint: const Text('Select Access type'),
                    icon: const Icon(Icons.keyboard_arrow_down),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Visitation Date *',
                style: TextStyle(
                    color: Color(0xFF111314),
                    fontSize: 14,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: dateinput,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xFFC2C9D1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.amberAccent),
                    ),
                    suffixIcon: Icon(Icons.calendar_today),
                    suffixIconColor: Colors.black,
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
                        DateFormat('dd-MM-yyyy').format(pickedDate);
                    print(formattedDate);
                    dateinput.text = formattedDate;
                  } else {
                    print('Date is not Selected');
                  }
                },
                cursorColor: Colors.black.withOpacity(.5),
              ),
              const SizedBox(height: 15),
              const Text(
                'Display Message',
                style: TextStyle(
                    color: Color(0xFF111314),
                    fontSize: 14,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 103,
                child: Expanded(
                  child: TextField(
                    maxLines: 8,
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Satoshi',
                        fontSize: 16.5,
                        fontWeight: FontWeight.w500),
                    obscureText: false,
                    decoration: const InputDecoration(
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
                      hintText:
                          'Message will be displayed to the security guard at check-in',
                    ),
                    cursorColor: Colors.black.withOpacity(.5),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Maximumum of 60 characters',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              ButtonSamp(
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
                              padding: const EdgeInsets.symmetric(horizontal:30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:CrossAxisAlignment.center,
                                children: [
                                  const Center(
                                    child: Expanded(
                                        child: Text(
                                            'You have successfully scheduled a visitor into your home',
                                            style:TextStyle(
                                              fontWeight:FontWeight.w400,
                                              fontSize:18,
                                              fontFamily:'Satoshi',
                                              ),
                                          textAlign:TextAlign.center,
                                            )),
                                  ),
                                  const SizedBox(height: 25,),
                                  ButtonSamp(onPressed: (){
                                    Navigator.pushReplacement(context,
                                          MaterialPageRoute(
                                        builder: (context) {
                                          return const VisitorDetails();
                                        },
                                      ));
                                  },text:'View Details'),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  text: 'Add Visitor'),
            ],
          ),
        ),
      ),
    );
  }
}
