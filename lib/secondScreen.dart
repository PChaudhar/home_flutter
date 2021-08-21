import 'package:flutter/material.dart';
import 'package:home_flutter/Homenavigation.dart';
import 'dart:async';
import 'package:home_flutter/home.dart';

class ScreenTwo extends StatefulWidget {
  final String mydata;
  ScreenTwo(this.mydata);

  String value;

//  ScreenTwo(String text, {Key key, @required this.value}) : super(key : key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState(value);
}

class _ScreenTwoState extends State<ScreenTwo> {

  String value;
  _ScreenTwoState(this.value);

  @override
  Widget build(BuildContext context) {
//    return Scaffold(
//        drawer: Drawer(
//          child: ListView(
//            padding: EdgeInsets.zero,
//            children: [
//              DrawerHeader(
//                child: Text('Drawer Header'),
//                decoration: BoxDecoration(
//                  color: Colors.blue,
//                ),
//        ),
//    ListTile(
//    title: Text('Item 1'),
//    onTap: () {
//    },
//    ),
//
//            ],
//          )
//
//        ),
//      );
    return Scaffold(
      appBar: AppBar(
        title: Text("Collection"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Priya"),
                accountEmail: Text("Priya@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text("P", style: TextStyle(fontSize: 50.0)
                    )
                )
            ),
            ListTile(
              title: Text("Home Page", style: TextStyle(color: Colors.indigo),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Homenavigation()));
//                    () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
            ListTile(
              title: Text("Notification Page", style: TextStyle(color: Colors.indigo),),
            ),
          ],
        ),
      ),//this will just add the Navigation Drawer Icon

    );

//   return Scaffold(
//      drawer: Drawer(
//        child: ListView(
//            padding: EdgeInsets.zero,
//            children: [
//              DrawerHeader(
//                  child: Text("Header")),
//              ListTile(
//                  title: Text("Home"))
//            ]),
//      ),
//    );
//      body:Container(
//          child: Center(
//            child:Text(widget.mydata,
//              style: TextStyle(
//                  fontSize: 30
//              ),),
//          )
//      );
  }
}
