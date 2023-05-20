import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallingP extends StatelessWidget {
  const CallingP({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height.h,
              child: Image.asset(
                'assets/1234.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40.h, left: 30.w),
              child: Text(
                'Shobnom Mustary',
                style: TextStyle(
                  fontSize: 28.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 340.h),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(
                        side: BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.blue.shade900,
                            width: 5.w),
                      ),
                      minimumSize: Size(100.w, 80.h)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.call,
                    size: 30.sp,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 80,
                    right: 80,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 9.h,
                    width: MediaQuery.of(context).size.width.w,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.volume_off,
                          size: 35.sp,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.dialpad,
                          size: 35.sp,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.videocam_off_rounded,
                          size: 36.sp,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
