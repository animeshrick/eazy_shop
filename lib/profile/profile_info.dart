import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    //double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 5, blurRadius: 2)
          ]),
          width: MediaQuery.of(context).size.width,
          height: 100,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.navigate_before,
                    size: 40,
                    color: Colors.white,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Icon(
                    Icons.navigate_before,
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: _height * .2,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage("assets/profile.jpg")))),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                suffixIcon: Icon(Icons.contact_mail),
                suffixIconConstraints: BoxConstraints(
                  minHeight: 32,
                  minWidth: 32,
                ),
                labelText: 'Email / Phone No. *',
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                suffixIcon: Icon(Icons.person),
                suffixIconConstraints: BoxConstraints(
                  minHeight: 32,
                  minWidth: 32,
                ),
                labelText: 'UserName *',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                suffixIcon: Icon(Icons.lock_clock),
                suffixIconConstraints: BoxConstraints(
                  minHeight: 32,
                  minWidth: 32,
                ),
                labelText: 'Password *',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                suffixIcon: Icon(Icons.lock_clock),
                suffixIconConstraints: BoxConstraints(
                  minHeight: 32,
                  minWidth: 32,
                ),
                labelText: 'Confirm Password *',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                suffixIcon: Icon(Icons.account_balance_outlined),
                suffixIconConstraints: BoxConstraints(
                  minHeight: 32,
                  minWidth: 32,
                ),
                labelText: 'Address *',
              ),
            ),
            RaisedButton(
              color: Colors.cyan,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white)),
              onPressed: () {},
              child: Text('Save Details'),
            )
          ],
        ),
      ),
    );
  }
}
