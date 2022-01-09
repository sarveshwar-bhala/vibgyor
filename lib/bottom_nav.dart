import 'dart:io';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:vibgyor/navigation_drawer.dart';
import 'main.dart';
import 'screens/bottom_nav_screens/contact.dart';
import 'screens/bottom_nav_screens/home.dart';
import 'screens/bottom_nav_screens/insights.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigation();
  }
}

class _BottomNavigation extends State<BottomNavigation> {

  int index = 1;

  final screens = [
    Insight(),
    Home(),
    Contact(),
  ];

  @override
  Widget build(BuildContext context) {

    
    final items = <Widget> [
      const Icon(Icons.bar_chart,size: 30,),
      const Icon(Icons.home_filled,size: 30,),
      const Icon(Icons.contact_page,size: 30,),
    ];

    return Scaffold(
        extendBody: true,
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.white)
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          items: items,
          index: index,
          height: 45,
          color: Colors.grey,
          onTap: (index)=> setState(() => this.index = index),
        ),
      )
    );
  }
}
