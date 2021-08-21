import 'package:flutter/material.dart';
import 'dart:async';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  @override
    void initState() {
    super.initState();
    new Future.delayed( const Duration( seconds: 4),
        () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),

    ));
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: FlutterLogo(
          size: 200,

        ),
      ),
    );
  }
}