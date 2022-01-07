import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:vibgyor/navigation_drawer.dart';
import '../notification.dart';

class Contact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Contact();
  }
}

class _Contact extends State<Contact> {
  TextEditingController name = TextEditingController();
  TextEditingController userId = TextEditingController();
  TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.account_circle),
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
        body: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Text(
              "Contact Us",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 10.0, right: 10.0),
            child: TextField(
              controller: name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 3,
                      style: BorderStyle.none,
                    )),
                //border: OutlineInputBorder(borderRadius: BorderRadius.zero)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: TextField(
              controller: userId,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: "User id",
                hintText: "User Id",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 3,
                      style: BorderStyle.none,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: TextField(
              controller: message,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: "Message",
                hintText: "Message",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 3,
                      style: BorderStyle.none,
                    )),
              ),
            ),
          ),
          SizedBox(
              height: 300,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Address',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '202, Shivai Industrial Estate, saki Naka, Andheri '
                        '(E), Mumbai - 400072',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Email Id',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'equities@vibgyoradvisors.com\nvibgyorsubscription@gmail'
                        '.com',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Contact',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '+91 85914 02578',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                                icon: const Icon(
                                  MdiIcons.instagram,
                                  size: 40.0,
                                  color: Color.fromRGBO(138, 58, 185, 4),
                                ),
                                onPressed: () {}),
                            IconButton(
                                icon: const Icon(MdiIcons.facebook,
                                    size: 40.0, color: Colors.blueAccent),
                                onPressed: () {}),
                            IconButton(
                                icon: const Icon(MdiIcons.linkedin,
                                    size: 40.0, color: Colors.blue),
                                onPressed: () {})
                          ]),
                    ]),
              ))
        ]));
  }
}

/*const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "Address",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 30.0),
            child: Center(
              child: Text(
                "202, Shivai Industrial Estate Saki Naka,"
                "Andher(E),Mumbai - 400072",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "Email Id",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "equities@vibgyorvisoe.com",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "vibgyorsubscription@gmail.com",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "Contact",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "+91 85914 02578",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),*/
