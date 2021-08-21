import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_flutter/main.dart';
import 'package:home_flutter/home.dart';
import 'package:home_flutter/secondScreen.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
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
       title: Text("Image Picker"),
       centerTitle: true,
       backgroundColor: Colors.blueAccent,
     ),
     body: Center(
       child: Image(
         image: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F677439968930881544%2F&psig=AOvVaw0HgYYmTNDwGKjnTQlguNhc&ust=1618411812477000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOCzwvu7--8CFQAAAAAdAAAAABAI'),
       )
       ),
     floatingActionButton: FloatingActionButton(
       onPressed: (
           ) {},
       child: Text('Click Me'),

       backgroundColor: Colors.blueAccent,
     ),
   );
 }
}





