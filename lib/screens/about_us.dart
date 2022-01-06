import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibgyor/navigation_drawer.dart';
import 'package:vibgyor/screens/notification.dart';

import '../main.dart';
import 'login.dart';

class AboutUs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Container(
                color: Colors.grey,
                height: 65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Icon(Icons.account_circle_outlined,size: 40,),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Login();
                        }));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0,right: 70),
                      child: Image(image: AssetImage('images/logo.png'),width: 150,height: 150,),
                    ),
                    GestureDetector(
                      child: Icon(Icons.notifications,size: 40,),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return NotificationView();
                        }));
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  "About Us",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(18.0),
              color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                          "Vibgyor Advisorsis a first-generation"
                          "Fintech firm focusing on providing the"
                      "best financialservicesto its clients."
                       "We work across varioussegments of the"
                          "financialservices and provide a wide"
                      " range ofservices. ",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        "Vibgyor Advisorsis a first-generation"
                            "Fintech firm focusing on providing the"
                            "best financialservicesto its clients."
                            "We work across varioussegments of the"
                            "financialservices and provide a wide"
                            " range ofservices. ",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}