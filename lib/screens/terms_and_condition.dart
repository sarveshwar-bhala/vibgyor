import 'package:flutter/material.dart';
import 'package:vibgyor/animation/bouncyanimation.dart';
import 'package:vibgyor/bottom_nav.dart';
import 'package:vibgyor/main.dart';
import 'package:vibgyor/navigation_drawer.dart';
import 'package:vibgyor/screens/login.dart';

class TermsAndCondition extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TermsAndCondition();
  }
}

class _TermsAndCondition extends State<TermsAndCondition> {
  bool isAgreeChecked = false;
  bool isOptionalChecked = false;

  TextEditingController phoneNumber = TextEditingController();
  TextEditingController panNumber = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Text(
              "Let's get you onboard",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              "provide the required details",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: TextField(
              controller: phoneNumber,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: "Mobile Number",
                hintText: "Mobile Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      width: 3,
                      style: BorderStyle.none,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: TextField(
              controller: panNumber,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: "Pan Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      width: 3,
                      style: BorderStyle.none,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
            child: Container(
              color: Colors.grey[300],
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                          value: isAgreeChecked,
                          onChanged: (bool? b) {
                            setState(() {
                              isAgreeChecked = b!;
                            });
                          }),
                      const Text(
                        'I agree to the following',
                        style: TextStyle(fontSize: 15.0),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 6.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.arrow_forward),
                        Expanded(
                          child: Text(
                              "I also authorise Vibgyor Advisor to access "
                              "my PAN & KYC information from KRAs(KYC registration agencies)"
                              "and use the same information for my investment journey. As per "
                              "regulatory requirements,I authorize you to use my KYC details"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_forward),
                        Expanded(
                          child: Text(
                              "By clicking continue, I authorize to contact me"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_forward),
                        Expanded(
                          child: Text(
                              "I agree to thr Privacy policy, Terms and the disclaimer"),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: isOptionalChecked,
                          onChanged: (check) {
                            setState(() {
                              isOptionalChecked = check!;
                            });
                          }),
                      const Expanded(
                        child: Text(
                          '(Optional) I would like to receive all important '
                          'communication through whatsapp',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(30.0),
              child: GestureDetector(
                child: const Image(
                  image: AssetImage('images/next.png'),
                  width: 170.0,
                ),
                onTap: () {
                  if (isAgreeChecked == true) {
                    Navigator.push(
                        context, BouncyAnimation(widget: BottomNavigation()));
                  } else {
// _scaffoldKey.currentState?.showSnackBar(SnackBar(content: Text("Agreeing to the Terms and Conditions is mandatory"),));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                          "Agreeing to the Terms and Conditions is mandatory"),
                    ));
                  }
                },
              ))
        ],
      ),
    );
  }
}
