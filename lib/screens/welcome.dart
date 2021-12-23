import 'package:flutter/material.dart';
import 'package:vibgyor/screens/terms_and_condition.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Logo(),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.zero,
                child: Text(
                  "Equity Advisor",
                  style: TextStyle(fontSize: 50.0),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.zero,
                child: Text(
                  "by Vibgyor Advisor",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 250.0, left: 150),
              child: GetStartedButton(),
            )
          ],
        ),
      ),
    );
  }
}

class GetStartedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsAndCondition()));
        },
        child: Text(
          "Get Started",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.black54,
          primary: Colors.grey,
          minimumSize: Size(200, 50),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/vibgyor_logo.jfif");
    Image image = Image(image: assetImage,);
    return Container(padding: EdgeInsets.zero, child: image);
  }
}
