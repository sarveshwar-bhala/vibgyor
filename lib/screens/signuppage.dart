import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibgyor/animation/bouncyanimation.dart';
import 'package:vibgyor/screens/bottom_nav_screens/home.dart';
import 'package:vibgyor/screens/login.dart';
import 'package:vibgyor/screens/terms_and_condition.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController referralController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 38),
            child: Text(
              "Let's Get Started!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Image(
              image: AssetImage('images/signup.png'),
              width: 2500,
              height: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, right: 30.0, left: 30),
            child: TextField(
              style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 20.0),
              controller: nameController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  labelText: "Name",
                  hintText: 'Name',
                  isDense: true,
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0),
                  hintStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23.0),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, right: 30.0, left: 30),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 20.0),
              controller: mailController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_rounded),
                  labelText: "Email",
                  hintText: 'Email',
                  isDense: true,
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0),
                  hintStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23.0),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, right: 30.0, left: 30),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 20.0),
              controller: passwordController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_clock_rounded),
                  labelText: "Password",
                  hintText: 'Name',
                  isDense: true,
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0),
                  hintStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23.0),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, right: 30.0, left: 30),
            child: TextField(
              keyboardType: TextInputType.number,
              style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 20.0),
              controller: numberController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone_android),
                  labelText: "Contact",
                  hintText: 'Contact',
                  isDense: true,
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0),
                  hintStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23.0),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, right: 30.0, left: 30),
            child: TextField(
              keyboardType: TextInputType.text,
              style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 20.0),
              controller: addressController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.home),
                  labelText: "Address",
                  hintText: 'Address',
                  isDense: true,
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0),
                  hintStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23.0),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, right: 30.0, left: 30),
            child: TextField(
              style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 20.0),
              controller: referralController,
              decoration: InputDecoration(
                  labelText: "Referral Code (optional)",
                  hintText: 'Referral Code',
                  isDense: true,
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0),
                  hintStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23.0),
                  )),
            ),
          ),
          Center(
              child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'By Signing up, you agree to our',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 16),
                child: Text(
                  'Term And Conditions',
                  style: TextStyle(fontSize: 13, color: Colors.lightBlueAccent),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, BouncyAnimation(widget: Login()));
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 18),
                  ))
            ],
          )),
        ]),
      ),
    ));
  }
}
