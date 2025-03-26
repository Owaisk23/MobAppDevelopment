import 'package:flutter/material.dart';
import 'package:forms/Dynamiclist.dart';
import 'package:forms/Home.dart';

class DrawerSide extends StatefulWidget {
  const DrawerSide({ Key? key }) : super(key: key);

  @override
  _DrawerSideState createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          ListTile(
            title: Text('Dynaimc List'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Dynamiclist()));
            },
          ),
          ListTile(
            title: Text('Products'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}