import 'package:flutter/material.dart';
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
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 18,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(
              top: 40,
              left: 30,
              right: 30,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.search_sharp,
                  color: Colors.blue.shade300,
                  size: 35,
                ),
                const SizedBox(
                  width: 2,
                ),
                const Text('Search contacts and places'),
                const SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.mic,
                  color: Colors.blue.shade300,
                  size: 30,
                ),
                Icon(
                  Icons.qr_code_scanner_sharp,
                  color: Colors.blue.shade300,
                  size: 30,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.blue.shade300,
                  size: 30,
                ),
              ],
            ),
          ),
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
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 30,
              top: 10,
              bottom: 20,
            ),
            child: Text(
              'Suggested Contacts',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //!
          ContactN(text: 'N', label: 'Nusrat'),
          const SizedBox(
            height: 10,
          ),
          ContactN(text: 'R', label: 'Ritu'),
          const SizedBox(
            height: 10,
          ),
          ContactN(text: 'S', label: 'Sweety'),
          const SizedBox(
            height: 15,
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
                  style: const TextStyle(
                      fontSize: 32.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    setState(
                      () {
                        if (phoneNumber.isNotEmpty) {
                          phoneNumber =
                              phoneNumber.substring(0, phoneNumber.length - 1);
                        }
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.backspace_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: Colors.grey),
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
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
          const Divider(height: 0.5, color: Colors.grey),
          SingleChildScrollView(
            child: Container(
              color: Colors.grey.shade300,
              height: 70.0,
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
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade400,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(22),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.call,
                            size: 20,
                            color: Colors.white,
                          ),
                          Text(
                            'Call',
                            style: TextStyle(
                              fontSize: 20,
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
    );
  }

  Widget _buildNumberButton(String number) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.white,
          minimumSize: const Size(5, 50),
        ),
        onPressed: () {
          updatePhoneNumber(number);
        },
        child: Text(
          number,
          style: const TextStyle(fontSize: 24.0, color: Colors.black),
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