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
      backgroundColor: Colors.grey,
      drawer: NavigationDrawer(),
      body:  Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background1.png"),
              fit: BoxFit.cover,
            ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(top:0,right: 250.0),
              child: Text(
                "Login",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.only(top: 70.0),
            //   child: Text(
            //     "Please enter your mobile number",
            //     textDirection: TextDirection.ltr,
            //     style: TextStyle(
            //       fontSize: 25.0,
            //       color: Colors.black,
            //       decoration: TextDecoration.none,
            //       fontFamily: 'Roboto',
            //       fontWeight: FontWeight.w700,
            //     ),
            //   ),
            // ),
            // const Padding(
            //   padding: EdgeInsets.only(top: 5.0, right: 60.0, left: 60.0),
            //   child: Text(
            //     "You will receive 4 digit code "
            //         "to verify next",
            //     textDirection: TextDirection.ltr,
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       fontSize: 22.0,
            //       color: Colors.black,
            //       decoration: TextDecoration.none,
            //       fontFamily: 'Roboto',
            //       fontWeight: FontWeight.w400,
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, right: 30.0, left: 30.0),
              child: TextField(
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 20.0
                ),
                controller: phoneNumberController,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: 'Email',
                    isDense: true,
                    labelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0
                    ),
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, right: 30.0, left: 30.0),
              child: TextField(
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 20.0
                ),
                controller: phoneNumberController,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: 'Password',
                    labelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0
                    ),
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )
                ),
              ),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30.0,top: 15),
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
                ),
                Padding(padding: EdgeInsets.only(top: 30.0,left: 80.0),
                child: Image(image: AssetImage('images/login.png'),width: 110,),)
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20,left: 250),
              child: Text(
                "New User?",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left:250,bottom:80,top: 10),
              child: Text(
                "Register",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  decoration: TextDecoration.underline
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

