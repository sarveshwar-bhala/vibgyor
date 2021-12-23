import 'package:flutter/material.dart';
import 'package:vibgyor/bottom_nav.dart';
import 'package:vibgyor/navigation_drawer.dart';
import 'package:vibgyor/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Vibgyor",
      home: MyMainPage(),
    );
  }
}

class MyMainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyMainPage();
  }
}

class _MyMainPage extends State<MyMainPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LogoMain(),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Welcome(),
      drawer: NavigationDrawer(),
    );
  }
}


class LogoMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/vibgyor_logo.jfif");
    Image image = Image(image: assetImage,width: 70,height: 70,);
    return Container(padding: EdgeInsets.zero, child: image);
  }
}
