import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Addcat extends StatefulWidget {
  const Addcat({ Key? key }) : super(key: key);

  @override
  _AddcatState createState() => _AddcatState();
}

class _AddcatState extends State<Addcat> {
  TextEditingController catName = new TextEditingController();

  final _formKey = GlobalKey<FormState>();

  Future<void> addCategory() async {
    await FirebaseFirestore.instance.collection('categories').doc().set({
      'categoryname': catName.text,
    });

     ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("CATEGORY Added successfully!"),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.green,
          ),
     );
  }

  @override
  Widget build(BuildContext context) {
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
                controller: catName,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter your category name',
                  labelText: 'Category Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Category Name can\'t be empty';
                  }

                  // if (!RegExp(
                  //   r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                  // ).hasMatch(value)) {
                  //   return "Email is not properly written"; // Agar email format sahi nahi ho to error
                  // }
                  return null;
                },
              ),
              
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: addCategory,

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: Text('Add Category'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}