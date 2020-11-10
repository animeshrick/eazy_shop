import 'dart:async';

import 'package:eazy_shop/user_data/user_mobile_verify.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => UserMobileVerify()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/splash_logo.jpg"),
          Text(
            'R & D Investing  Investing Analytics for Decision Making',
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
