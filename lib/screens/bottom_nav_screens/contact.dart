import 'package:flutter/material.dart';
import 'package:vibgyor/navigation_drawer.dart';

import '../../main.dart';

class Contact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Contact();
  }
}

class _Contact extends State<Contact> {

  TextEditingController name = TextEditingController();
  TextEditingController userId = TextEditingController();
  TextEditingController message = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: LogoMain(),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        drawer: NavigationDrawer(),
        body: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Text(
              "Contact Us",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: TextField(
              controller: name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.zero)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: TextField(
              controller: userId,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  labelText: "User id",
                  hintText: "User Id",
                  border: OutlineInputBorder(borderRadius: BorderRadius.zero)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: TextField(
              controller: message,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  labelText: "Message",
                  hintText: "Message",
                  border: OutlineInputBorder(borderRadius: BorderRadius.zero)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "Address",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0,right: 10.0,left: 30.0),
            child: Center(
              child: Text(
                "202, Shivai Industrial Estate Saki Naka,"
                    "Andher(E),Mumbai - 400072",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "Email Id",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "equities@vibgyorvisoe.com",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "vibgyorsubscription@gmail.com",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "Contact",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "+91 85914 02578",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
        ]));
  }
}
