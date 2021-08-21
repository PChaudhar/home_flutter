import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:home_flutter/secondScreen.dart';
void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final myController = TextEditingController();

String value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
        body: Padding(
          padding: EdgeInsets.all(5),
          child: ListView(
            children: [
              Container (
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(top: 60),
                child: Icon(
                    Icons.lock, color: Colors.indigoAccent, size: 140),
        ),
                Text('Log In', textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  fontSize: 40,
                ),
                    ),
              SizedBox(
                height: 50,
              ),

              TextField(

                controller: myController,
//                border: OutlinedBorder(
//                  borderSide: BorderSide(color: Colors.grey),
//                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (text){
                  value = text;
                },
                decoration: InputDecoration(
                  hintText: 'Email Address',
                  suffixIcon: Icon(Icons.email),
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                ),
              ),
              SizedBox(
                height: 70,
              ),

//    TextField(
//
//                obscureText: !this._showPassword,
//                decoration: InputDecoration(
//                  hintText: 'Password',
//                  hintStyle: TextStyle(color: Colors.grey),
//                  filled: true,
//
//                  suffixIcon: IconButton(
//                    icon: Icon(
//                      Icons.remove_red_eye,
//                      color: this._showPassword ? Colors.grey : Colors.grey,
//                    ),
//                    onPressed: () {
//                      setState(() => this._showPassword = !this._showPassword);
//                    },
//                  ),
//                ),
//          ),
//              SizedBox(
//                height: 50,
//              ),

              RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                textColor: Colors.white,
                color: Colors.indigoAccent,
                child: Text('SUBMIT'),
                    onPressed: () {

                 Navigator.of(context).push(MaterialPageRoute(
                   builder: (context) => ScreenTwo(value),
                 ));
//                 return showDialog(context: context,
//                 builder: (context) {
//                   return AlertDialog(
//                     content: Text(myController.text),
//                   );
//                 }
//                 );


              },
                ),

//              FlatButton(
//                child: Text('Forgot Password?'),
//                color: Colors.indigoAccent,
//                onPressed: _showForgotPasswordDialog,
//
//              )
        ],
    ),
    )
      );
  }
}