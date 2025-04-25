import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:forms/Dynamiclist.dart';
import 'package:forms/ListViewSec.dart';
import 'package:forms/Start.dart';
import 'package:forms/firebase_options.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dynamiclist(),
    ),);
}