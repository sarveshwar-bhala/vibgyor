import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibgyor/screens/login.dart';

import '../../main.dart';
import '../../navigation_drawer.dart';

class SectoralServicesDescription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SectoralServicesDescription();
  }
}

class _SectoralServicesDescription extends State<SectoralServicesDescription> {
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
                margin: EdgeInsets.all(10.0),
                color: Colors.grey,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: Text(
                              " Intraday trades endeavor to benefit "
                                  "from the daily volatility, direction and trend in the market",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 159.0),
                            child: Text(
                              "2-3 Trade Ideas daily",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios),

                        Text(
                          "Both in the Cash and Future segment",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios),
                        Text(
                          "No calls in illiquid stocks",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios),

                        Expanded(
                          child: Text(
                            "Will provide full details like the Segment, Stock"
                            "Name, CMP, Entry Range, Stop-loss & Target.",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios),

                        Text(
                          "Key Feature: Excellent Risk Management.",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios),

                        Expanded(
                          child: Text(
                            "Endeavour to deliver target return of 1% to 1.5% on"
                              "intraday basis",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    ElevatedButton(onPressed: (){}, child: Text("Buy Now"))
                  ],
                )
            ),


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
