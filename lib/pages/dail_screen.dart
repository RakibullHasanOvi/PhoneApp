import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_call_app/pages/calling_page.dart';

import '../widgets/contact_w.dart';
import '../widgets/icnos_w.dart';

class DialPadScreen extends StatefulWidget {
  const DialPadScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DialPadScreenState createState() => _DialPadScreenState();
}

class _DialPadScreenState extends State<DialPadScreen> {
//? this phonenumber use for dialpad all of the numbers.
  String phoneNumber = '';

//? Create Fast Function is updatePhoneNumber
  void updatePhoneNumber(String number) {
    setState(() {
      phoneNumber += number;
    });
  }

//? Create Second Function is clearPhoneNumber (delete a number while click it.)
  void clearPhoneNumber() {
    setState(() {
      phoneNumber = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
//? This Container widget use for (SearchBox design)..
            Container(
              padding: EdgeInsets.only(
                top: 5.h,
                left: 2.w,
                bottom: 5.h,
                right: 2.w,
              ),
              margin: EdgeInsets.only(
                top: 20.h,
                left: 20.w,
                right: 20.w,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.search_sharp,
                    color: Colors.blue.shade300,
                    size: 30.sp,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    'Search contacts and places',
                    style: TextStyle(fontSize: 12.sp),
                  ),
                  SizedBox(
                    width: 35.w,
                  ),
                  Icon(
                    Icons.mic,
                    color: Colors.blue.shade300,
                    size: 25.sp,
                  ),
                  Icon(
                    Icons.qr_code_scanner_sharp,
                    color: Colors.blue.shade300,
                    size: 25.sp,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.blue.shade300,
                    size: 25.sp,
                  ),
                ],
              ),
            ),
//? End the (SearchBox design)..

//? PC...It's a widget that I create for easy the code...
            PC(
              icon: Icons.person_search_rounded,
              text: 'Create New Contacts',
            ),
            PC(
              icon: Icons.person_add_alt_1,
              text: 'Add New Contacts',
            ),
            PC(
              icon: Icons.message,
              text: 'Send Message',
            ),

            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 10,
                bottom: 20,
              ),
              child: Text(
                'Suggested Contacts',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
//! ContactN creates a widget for helps the code..
            ContactN(text: 'N', label: 'Nusrat'),
            SizedBox(
              height: 10.h,
            ),
            ContactN(text: 'R', label: 'Ritu'),
            SizedBox(
              height: 10.h,
            ),
            ContactN(text: 'S', label: 'Sweety'),
            SizedBox(
              height: 15.h,
            ),
//?
            Container(
              color: Colors.grey.shade300,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    phoneNumber,
                    style: TextStyle(
                        fontSize: 32.0.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(
                        () {
                          if (phoneNumber.isNotEmpty) {
                            phoneNumber = phoneNumber.substring(
                                0, phoneNumber.length - 1);
                          }
                        },
                      );
                    },
                    icon: Icon(
                      Icons.backspace_outlined,
                      size: 30.sp,
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 1.h, color: Colors.grey),
            Expanded(
              child: Container(
                color: Colors.grey.shade300,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildNumberButton('1'),
                          _buildNumberButton('2'),
                          _buildNumberButton('3'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildNumberButton('4'),
                          _buildNumberButton('5'),
                          _buildNumberButton('6'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildNumberButton('7'),
                          _buildNumberButton('8'),
                          _buildNumberButton('9'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildNumberButton('*'),
                          _buildNumberButton('0'),
                          _buildNumberButton('#'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    )
                  ],
                ),
              ),
            ),
            Divider(height: 0.5.h, color: Colors.grey),
            SingleChildScrollView(
              child: Container(
                color: Colors.grey.shade300,
                height: 50.0.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // IconButton(
                    //   icon: const Icon(Icons.backspace),
                    //   onPressed: () {
                    // setState(() {
                    //   if (phoneNumber.isNotEmpty) {
                    //     phoneNumber =
                    //         phoneNumber.substring(0, phoneNumber.length - 1);
                    //   }
                    // });
                    //   },
                    // ),
                    // IconButton(
                    //   icon: const Icon(Icons.call),
                    //   onPressed: () {
                    //     // Place your call logic here
                    //     // print('Calling $phoneNumber');
                    //   },
                    // ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const CallingP(),
                            ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        height: 40.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade400,
                          borderRadius: BorderRadius.all(
                            Radius.circular(22.r),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.call,
                              size: 20.sp,
                              color: Colors.white,
                            ),
                            Text(
                              'Call',
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNumberButton(String number) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.white,
          minimumSize: Size(3.w, 40.h),
        ),
        onPressed: () {
          updatePhoneNumber(number);
        },
        child: Text(
          number,
          style: TextStyle(fontSize: 22.0.sp, color: Colors.black),
        ),
      ),
    );
  }
}

// TextFormField(
//               decoration: InputDecoration(
//                 contentPadding: const EdgeInsets.only(top: 5),
//                 fillColor: Colors.grey.shade300,
//                 filled: true,
//                 hintText: 'Search contacts and places',
//                 hintStyle: const TextStyle(color: Colors.black, fontSize: 13),
//                 prefixIcon: const Icon(
//                   Icons.search_rounded,
//                   size: 35,
//                   color: Colors.blue,
//                 ),
//                 suffixIcon: const Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.mic,
//                       color: Colors.blue,
//                       size: 30,
//                     ),
//                     Icon(
//                       Icons.qr_code_scanner_outlined,
//                       color: Colors.blue,
//                       size: 30,
//                     ),
//                     Icon(
//                       Icons.more_vert,
//                       color: Colors.blue,
//                       size: 30,
//                     ),
//                   ],
//                 ),
//                 border: const OutlineInputBorder(
//                   borderSide: BorderSide.none,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(20),
//                   ),
//                 ),
//               ),
//             ),
