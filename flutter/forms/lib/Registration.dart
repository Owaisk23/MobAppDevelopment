import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({ Key? key }) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    TextEditingController UserName = new TextEditingController();
    TextEditingController UserEmail = new TextEditingController();
    TextEditingController UserPassword = new TextEditingController();    

    Future<void> formSubmit()async {
      print('Name: ${UserName.text}');
      print('Email: ${UserEmail.text}');
      print('Password: ${UserPassword.text}');

      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: UserEmail.text,
        password: UserPassword.text,
      );

      print('User: ${userCredential}');

      await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
        'username': UserName.text,
        'userrole': 'customer',
        'useremail': UserEmail.text,
        'userpassword': UserPassword.text,
      });
    }


    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Screen'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,

          child: Column(
            children: [
              TextField(
                controller: UserName,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  labelText: 'Name',
                ),
              ),
              SizedBox(height: 5,),
              TextField(
                controller: UserEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 5,),
              TextField(
                controller: UserPassword,
                autocorrect: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 5,),
              ElevatedButton(
                onPressed: (formSubmit),
                child: Text('Register'),
              ),
            ],
          ),
        )
      ),
    );
  }
}