import 'package:flutter/material.dart';
import 'package:vibgyor/navigation_drawer.dart';

import '../main.dart';

class AboutUs extends StatelessWidget{
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                  "Vibgyor Advisors is a first generation firm focusing on financial services. "
                      "It works across various segments of the financial services and provides"
                      " a wide range of services to its esteemed clients. It advises individuals "
                      "as well as corporates on their various requirements with a client centric approach.",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}