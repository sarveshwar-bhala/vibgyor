import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibgyor/screens/about_us.dart';
import 'package:vibgyor/screens/bottom_nav_screens/contact.dart';
import 'package:vibgyor/screens/bottom_nav_screens/home.dart';
import 'package:vibgyor/screens/login.dart';
import 'package:vibgyor/screens/settings.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.grey,
        child: ListView(
          children: [
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: "User id",
                icon: Icons.account_circle,
                onClicked: () => selectedItem(context, 0)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: "Our Services",
                icon: Icons.miscellaneous_services,
                onClicked: () => selectedItem(context, 1)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: "Settings",
                icon: Icons.settings,
                onClicked: () => selectedItem(context, 2)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: "Help & Support",
                icon: Icons.help_center,
                onClicked: () => selectedItem(context, 3)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: "About us",
                icon: Icons.accessibility_sharp,
                onClicked: () => selectedItem(context, 4)),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(
      {required String text, required IconData icon, VoidCallback? onClicked}) {
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
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {

    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Login()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Home()));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Settings()));
        break;
      case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Contact()));
        break;
      case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AboutUs()));
        break;
    }
  }
}
