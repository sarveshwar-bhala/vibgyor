import 'package:flutter/material.dart';
import 'package:vibgyor/screens/login.dart';

import '../../main.dart';
import '../../navigation_drawer.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }
}

class _Home extends State<Home> {
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
      body: Material(
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.grey,
                child: buildMenuItem(
                    text: "IntraDay Trade", icon: Icons.find_in_page_rounded)),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.grey,
                child: buildMenuItem(
                    text: "Swing Trade", icon: Icons.find_in_page_rounded)),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.grey,
                child: buildMenuItem(
                    text: "Sectoral Trade", icon: Icons.find_in_page_rounded)),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.grey,
                child: buildMenuItem(
                    text: "Positional Trade",
                    icon: Icons.find_in_page_rounded)),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.grey,
                child: buildMenuItem(
                    text: "Portfolio Trade", icon: Icons.find_in_page_rounded)),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.grey,
                child: buildMenuItem(
                    text: "Portfolio Health Check Up",
                    icon: Icons.find_in_page_rounded)),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.grey,
                child: buildMenuItem(
                    text: "IntraDay Trade", icon: Icons.find_in_page_rounded)),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({required String text, required IconData icon}) {
    const color = Colors.white;
    const hoverColor = Colors.white;
    return ListTile(
      hoverColor: hoverColor,
      leading: Icon(
        icon,
        color: color,
        size: 30,
      ),
      title: Text(
        text,
        style: const TextStyle(
            color: color, fontSize: 20, decoration: TextDecoration.underline),
      ),
      onTap: () {},
    );
  }
}
