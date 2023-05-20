import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ContactN extends StatelessWidget {
  String text;
  String label;
  ContactN({super.key, required this.text, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 23.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 32.h,
            width: 36.w,
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 1.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '01302172187',
                style: TextStyle(fontSize: 12.sp),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 70.w),
            child: Icon(
              Icons.call,
              size: 28.sp,
              color: Colors.blue.shade400,
            ),
          ),
          Icon(
            Icons.video_call,
            size: 35.sp,
            color: Colors.blue.shade400,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Icon(
              Icons.message,
              size: 25.sp,
              color: Colors.blue.shade400,
            ),
          )
        ],
      ),
    );
  }
}
