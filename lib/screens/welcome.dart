import 'package:flutter/material.dart';
import 'package:vibgyor/screens/terms_and_condition.dart';

import 'login.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/background.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 190, top: 180.0),
                child: Logo(),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.zero,
                child: Text(
                  "Equity Advisor",
                  style: TextStyle(fontSize: 50.0),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.zero,
                child: Text(
                  "by Vibgyor Advisor",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 190.0, left: 150),
              child: GestureDetector(
                child: const Image(
                  image: AssetImage('images/button.png'),
                  width: 160.0,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
              ),
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
      color: Colors.transparent,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/buttom.png'),
      )),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TermsAndCondition()));
        },
        child: const Text(
          "Get Started",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.black54,
          primary: Colors.grey,
          minimumSize: const Size(200, 50),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/logo.png");
    Image image = Image(
      image: assetImage,
    );
    return Container(padding: EdgeInsets.zero, child: image);
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/background.png");
    Image image = Image(
      image: assetImage,
    );
    return Container(padding: EdgeInsets.zero, child: image);
  }
}
