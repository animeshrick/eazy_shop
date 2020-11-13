import 'package:eazy_shop/Home_screen/home_view.dart';
import 'package:eazy_shop/Home_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';

class OTPVerification extends StatelessWidget {
  var number = '+919475382132';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Image.asset("assets/otp_verifing.jpg"),
          Text(
            "OTP Verifing",
            style: TextStyle(fontSize: 30),
          ),
          Text('OTP sent in $number number'),
          OTPTextField(
            length: 4,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 40,
            style: TextStyle(fontSize: 17),
            textFieldAlignment: MainAxisAlignment.spaceAround,
          ),
          SizedBox(
            height: 20,
          ),
          Text("In case OTP is not recived in $number"),
          InkWell(
            onTap: () {},
            child: Text(
              " Click here !",
              style: TextStyle(color: Colors.pinkAccent),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => MainScreen())),
            child: new Container(
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: new BoxDecoration(
                color: Colors.blueAccent,
                border: new Border.all(color: Colors.white, width: 10.0),
                borderRadius: new BorderRadius.circular(20.0),
              ),
              child: new Center(
                child: new Text(
                  ' Confirm',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
