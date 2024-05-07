import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mandirwiki/screen/phone_number.dart';

class URDigitalBuddy extends StatefulWidget {
   URDigitalBuddy();

  @override
  State<URDigitalBuddy> createState() => _URDigitalBuddyState();
}

class _URDigitalBuddyState extends State<URDigitalBuddy> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), () {
      Get.offAll(PhoneNumber());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset('assets/images/ur_buddy.png', fit: BoxFit.cover),
          ),
          Positioned(
            top: 0,
            child: Container(
              height: 100,
              width: 1000,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
