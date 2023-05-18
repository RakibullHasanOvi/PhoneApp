import 'package:flutter/material.dart';

import 'dail_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          const Padding(
            padding: EdgeInsets.only(top: 300),
            child: Column(
              children: [
                Text(
                  'No recent call',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'A record of your calls will appear here',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const DialPadScreen(),
                ));
          },
          icon: const Icon(
            Icons.dialpad_outlined,
            size: 40,
            color: Colors.blue,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade300,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later_outlined),
            label: 'Recents',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Contacts',
          ),
        ],
      ),
    );
  }
}
