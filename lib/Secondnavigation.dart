import 'dart:io' ;
import 'package:home_flutter/home.dart';
import 'package:home_flutter/main.dart';
import 'package:flutter/material.dart';
import 'package:home_flutter/secondScreen.dart';
import 'package:home_flutter/Secondnavigation.dart';

void main() {
  runApp(MaterialApp(
    home: Secondnavigation(),
  ));
}
class Secondnavigation extends StatefulWidget {
  // const Secondnavigation({Key? key}) : super(key: key);

  @override
  _SecondnavigationState createState() => _SecondnavigationState();
}

class _SecondnavigationState extends State<Secondnavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,

      ),
    );
  }
}