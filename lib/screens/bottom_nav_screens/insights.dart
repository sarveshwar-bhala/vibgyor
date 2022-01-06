import 'package:flutter/material.dart';

import '../../main.dart';
import '../../navigation_drawer.dart';
import '../login.dart';

class Insight extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Login();
          },
          child: Icon(Icons.account_circle_outlined,size: 40,),
        ),
        title: Image(image: AssetImage('images/logo.png'),width: 70.0,height: 70.0,),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: Text(
          "Insight",
          style: TextStyle(
              fontSize: 50
          ),
        ),
      ),
    );
  }
}