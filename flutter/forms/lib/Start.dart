import 'package:flutter/material.dart';
import 'package:forms/Login.dart';
import 'package:forms/Registration.dart';

class Start extends StatefulWidget {
  const Start({ Key? key }) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Registration()));
              },
              child: Text('Registeration Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text('Login Screen'),
            ),
          ],
        ),
      ),
    );
  }
}