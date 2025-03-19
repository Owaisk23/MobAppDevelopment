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

    void formSubmit() {
      print('Name: ${UserName.text}');
      print('Email: ${UserEmail.text}');
      print('Password: ${UserPassword.text}');
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