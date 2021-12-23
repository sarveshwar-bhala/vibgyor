import 'package:flutter/material.dart';

import '../main.dart';
import '../navigation_drawer.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Login();
  }
}

class _Login extends State<Login>{

    TextEditingController phoneNumberController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LogoMain(),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      drawer: NavigationDrawer(),
      body:  Container(

        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                "Login PAge",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 70.0),
              child: Text(
                "Please enter your mobile number",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5.0, right: 60.0, left: 60.0),
              child: Text(
                "You will receive 4 digit code "
                    "to verify next",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black54,
                  decoration: TextDecoration.none,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, right: 30.0, left: 30.0),
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 20.0
                ),
                controller: phoneNumberController,
                decoration: InputDecoration(
                    labelText: "Mobile Number",
                    hintText: 'Mobile Number',
                    isDense: true,
                    prefixText: '+91   -    ',
                    prefixStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                    )
                ),
                maxLength: 13,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Container(
                child: RaisedButton(
                  padding:
                  EdgeInsets.only(
                      top: 15.0, right: 115.0, left: 115.0, bottom: 15.0),
                  color: Colors.grey,
                  child: Text(
                    'Continue',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                  ),
                  elevation: 5,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

