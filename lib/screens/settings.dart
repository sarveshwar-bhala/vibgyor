import 'package:flutter/material.dart';

import '../main.dart';
import '../navigation_drawer.dart';

class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LogoMain(),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: Column(
          children: [
            Text(
              "Settings",style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold
            ),
            ),
            Row(
              children: [
                Text(
                    "Change Password",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.normal
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                    "Notification Pop Up",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.normal
                  ),
                ),
                SizedBox(width: 100,),
                Switch(value: false, onChanged: (value){})
              ],
            ),
            Row(
              children: [
                Text(
                    "Dark Theme",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.normal
                  ),
                ),
                SizedBox(width: 180,),

                Switch(value: false, onChanged: (value){})

              ],
            ),
            Row(
              children: [
                Text(
                    "Save Info",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.normal
                  ),
                ),
                SizedBox(width: 210,),

                Switch(value: false, onChanged: (value){})

              ],
            ),
            Row(
              children: [
                Text(
                    "Two Factor Authentication",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.normal
                  ),
                ),
                SizedBox(width: 25,),

                Switch(value: false, onChanged: (value){})
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 290.0),
              child: Text(
                  "FeedBack",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.normal
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),

      ),
    );
  }
}