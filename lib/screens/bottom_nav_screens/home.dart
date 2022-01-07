import 'package:flutter/material.dart';
import 'package:vibgyor/screens/login.dart';

import '../../main.dart';
import '../../navigation_drawer.dart';
import '../notification.dart';

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
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Image(
          image: AssetImage('images/logo.png'),
          width: 70.0,
          height: 70.0,
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.notifications_active),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NotificationView();
                }));
              }),
        ],
        centerTitle: true,
        elevation: 0,
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
                margin: const EdgeInsets.all(20.0),
                color: Colors.grey,
                child: buildMenuItem(
                    text: "Swing Trade", icon: Icons.find_in_page_rounded)),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: const EdgeInsets.all(20.0),
                color: Colors.grey,
                child: buildMenuItem(
                    text: "Sectoral Trade", icon: Icons.find_in_page_rounded)),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: const EdgeInsets.all(20.0),
                color: Colors.grey,
                child: buildMenuItem(
                    text: "Positional Trade",
                    icon: Icons.find_in_page_rounded)),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: const EdgeInsets.all(20.0),
                color: Colors.grey,
                child: buildMenuItem(
                    text: "Portfolio Trade", icon: Icons.find_in_page_rounded)),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: const EdgeInsets.all(20.0),
                color: Colors.grey,
                child: buildMenuItem(
                    text: "Portfolio Health Check Up",
                    icon: Icons.find_in_page_rounded)),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: const EdgeInsets.all(20.0),
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

/*
GestureDetector(
onTap: (){
Navigator.pushReplacement(context,
MaterialPageRoute(builder: (context) {
return NavigationDrawer();
}));;
},
child: const Icon(Icons.account_circle_outlined,size: 40,),
),*/
