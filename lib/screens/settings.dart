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
        child: Text(
          "Settings"
        ),
      ),
    );
  }
}