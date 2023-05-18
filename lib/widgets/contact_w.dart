import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContactN extends StatelessWidget {
  String text;
  String label;
  ContactN({super.key, required this.text, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 30,
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '01302172187',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Icon(
              Icons.call,
              size: 30,
              color: Colors.blue.shade400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(
              Icons.video_call,
              size: 35,
              color: Colors.blue.shade400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(
              Icons.message,
              size: 30,
              color: Colors.blue.shade400,
            ),
          )
        ],
      ),
    );
  }
}
