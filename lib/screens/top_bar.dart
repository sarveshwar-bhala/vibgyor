import 'package:flutter/material.dart';
import 'package:vibgyor/screens/login.dart';

class TopBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        margin: EdgeInsets.only(top: 200.0),
        height: 20,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              child: Icon(Icons.account_circle_outlined),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Login();
                }));
              },
            ),
            Image(image: AssetImage('images/logo.png'),width: 100,height: 100,),
            GestureDetector(
              child: Icon(Icons.notifications),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Login();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}