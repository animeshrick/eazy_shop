import 'package:eazy_shop/user_data/otp_verify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserMobileVerify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQrDPIbx9Hgv6nrqMJvJqFr44ElTwtYjzEBlPpvEyrS4GFrV8tJmEWPhV_yWVTKiVxtbvT1cRj2DO8RMHypMUlmD1yqZa3ZBAHgazLuIKE&usqp=CAU&ec=45722096"),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 10),
              child: Text(
                "Mobile Number Verification",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Keep your data secure using two step mobile number verification"),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
              decoration: InputDecoration(
                  labelText: "Your Phone number with +91",
                  icon: Icon(Icons.phone_iphone)),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => OTPVerification())),
              child: new Container(
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 10.0),
                  borderRadius: new BorderRadius.circular(20.0),
                ),
                child: new Center(
                  child: new Text(
                    'Send OTP',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
