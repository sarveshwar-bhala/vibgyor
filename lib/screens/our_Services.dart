import 'package:flutter/material.dart';
import 'package:vibgyor/screens/login.dart';
import 'package:vibgyor/screens/our_service_description.dart';
import 'package:vibgyor/screens/payment.dart';
import 'package:vibgyor/screens/sectoral_service_description.dart';
import 'package:vibgyor/screens/swing_service_description.dart';

import '../../main.dart';
import '../../navigation_drawer.dart';

class Services extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Services();
  }
}

class _Services extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Login();
          },
          child: Icon(Icons.account_circle_outlined,),
        ),
        title: LogoMain(),
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
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>IntraServicesDescription()));

              },
              child: Container(
                  margin: EdgeInsets.all(20.0),
                  color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Intraday Trade",
                        style: TextStyle(
                          fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.black
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "2-3 Trade advices per day",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));

                      }, child: Text("Buy Now"))
                    ],
                  )
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SwingServicesDescription()));

              },
              child: Container(
                  margin: EdgeInsets.all(20.0),
                  color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Swing Trade",
                        style: TextStyle(
                            fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.black
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "2-3 Trade advices per day",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));

                      }, child: Text("Buy Now"))
                    ],
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SectoralServicesDescription()));

              },
              child: Container(
                  margin: EdgeInsets.all(20.0),
                  color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Sectoral Trade",
                        style: TextStyle(
                            fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.black
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "2-3 Trade advices per day",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));

                      }, child: Text("Buy Now"))
                    ],
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Positional Trade",
                      style: TextStyle(
                          fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.black
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "2-3 Trade advices per day",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));

                    }, child: Text("Buy Now"))
                  ],
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.grey,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "PortFoloio Ideas",
                      style: TextStyle(
                          fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.black
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "2-3 Trade advices per day",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));

                    }, child: Text("Buy Now"))
                  ],
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "PortFolio",
                      style: TextStyle(
                          fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.black
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "2-3 Trade advices per day",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(onPressed: (){}, child: Text("Buy Now"))
                  ],
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Intraday Trade",
                      style: TextStyle(
                          fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.black
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "2-3 Trade advices per day",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(onPressed: (){}, child: Text("Buy Now"))
                  ],
                )),
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
