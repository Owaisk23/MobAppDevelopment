// import 'package:firstapp/DarazScreen.dart';
// import 'package:firstapp/FirstScreen.dart';
// import 'package:firstapp/details.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firstapp/BIllCalculator.dart';
import 'package:firstapp/addproduct.dart';
import 'package:firstapp/firebase_options.dart';
import 'package:firstapp/productFetch.dart';
// import 'package:firstapp/product.dart';
// import 'package:firstapp/test.dart';
import 'package:flutter/material.dart';

void main()async {

  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
   runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Addproduct()
    ),
  );
}



