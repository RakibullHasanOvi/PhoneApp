import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dail_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double hEight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
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

//? This Padding widget uses for text..
            Container(
              margin: EdgeInsets.only(top: hEight / 2.4.h),
              child: Column(
                children: [
                  Text(
                    'No recent call',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'A record of your calls will appear here',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.sp,
                    ),
                  )
                ],
              ),
            ),
//? End the (text)...
          ],
        ),
//? This peramitter use for a button like dialpad..
        floatingActionButton: Container(
          padding: EdgeInsets.only(
            right: 30.w,
            bottom: 30.w,
          ),
          child: IconButton(
            onPressed: () {
              //? This navigator.push helps shiftin another page...
              Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const DialPadScreen(),
                  ));
            },
            icon: Icon(
              Icons.dialpad_outlined,
              size: 40.sp,
              color: Colors.blue,
            ),
          ),
        ),
//? this peramiter use for bottomnavigation bar..
        bottomNavigationBar: BottomNavigationBar(
          //? this is a BNB widget..
          backgroundColor: Colors.grey.shade300,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blue,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
//? It's BNBI widget..
              icon: Icon(
                Icons.star,
                size: 30.sp,
              ),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.watch_later_outlined,
                size: 30.sp,
              ),
              label: 'Recents',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                size: 30.sp,
              ),
              label: 'Contacts',
            ),
          ],
        ),
      ),
    );
  }
}
