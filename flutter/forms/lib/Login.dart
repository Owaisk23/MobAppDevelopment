import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController UserEmail = new TextEditingController();
    TextEditingController UserPassword = new TextEditingController();

    final _formKey = GlobalKey<FormState>();

    void loginSubmit() {
      if (_formKey.currentState!.validate()) {
        print('Login Successful ${_formKey}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Hello ${UserEmail.text} Form submit successfully!"),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.green,
          ),
        );
      }
    }

    Future<void> userLogin() async {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: UserEmail.text,
        password: UserPassword.text,
      );

      print(userCredential);
    }


    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: UserEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email can\'t be empty';
                  }

                  if (!RegExp(
                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                  ).hasMatch(value)) {
                    return "Email is not properly written"; // Agar email format sahi nahi ho to error
                  }
                  return null;
                },
              ),
              SizedBox(height: 5),
              TextFormField(
                controller: UserPassword,
                autocorrect: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email can\'t be empty';
                  }

                  if (!RegExp(
                    r'^(?=(?:.*[a-zA-Z]){5,})[a-zA-Z0-9]+$',
                  ).hasMatch(value)) {
                    return "Password contain atleast 5 aplhabets or numbers wihtout special char"; // Agar email format sahi nahi ho to error
                  }
                  return null;
                },
              ),
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: loginSubmit,

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
