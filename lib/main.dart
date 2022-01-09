import 'package:flutter/material.dart';
import 'package:vibgyor/bottom_nav.dart';
import 'package:vibgyor/navigation_drawer.dart';
import 'package:vibgyor/screens/notification.dart';
import 'package:vibgyor/screens/payment.dart';
import 'package:vibgyor/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Vibgyor",
      home: MyMainPage(),
    );
  }
}

class MyMainPage extends StatefulWidget{
  const MyMainPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyMainPage();
  }
}

class _MyMainPage extends State<MyMainPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Welcome(),
      drawer: const NavigationDrawer(),
    );
  }
}


class LogoMain extends StatelessWidget {
  const LogoMain({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/vibgyor_logo.jfif");
    Image image = Image(image: assetImage,width: 70,height: 70,);
    return Container(padding: EdgeInsets.zero, child: image);
  }
}
