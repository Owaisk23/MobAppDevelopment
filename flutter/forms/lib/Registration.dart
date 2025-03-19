import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({ Key? key }) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Screen'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Text("Registration Screen"),
    );
  }
}