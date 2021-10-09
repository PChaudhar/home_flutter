import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_flutter/main.dart';
import 'package:home_flutter/home.dart';
import 'package:home_flutter/secondScreen.dart';
import 'package:flutter/widgets.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:image_cropper/image_cropper.dart';


void main() {
  runApp(MaterialApp(
    home: Homenavigation(),
  ));
}


class Homenavigation extends StatefulWidget {
 @override
 _HomenavigationState createState() => _HomenavigationState();
}

class _HomenavigationState extends State<Homenavigation> {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Home Page"),
       centerTitle: true,
       backgroundColor: Colors.blueAccent,
     ),
     body: Center(
       // child: Image(
       //   image: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fflowers%2F&psig=AOvVaw0Rl5UCdv25e-dbCV7nseVe&ust=1633841332248000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCJiFlbXDvPMCFQAAAAAdAAAAABAD'),
       // )
       ),
     floatingActionButton: FloatingActionButton(
       onPressed: (
           ) {},
       child: Text('Plus'),

       backgroundColor: Colors.blueAccent,
     ),
   );
 }
}





