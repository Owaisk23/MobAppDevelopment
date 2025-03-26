import 'package:flutter/material.dart';
import 'package:forms/DrawerSide.dart' as SideDiv;

class ListViewSec extends StatefulWidget {
  const ListViewSec({ Key? key }) : super(key: key);

  @override
  _ListViewSecState createState() => _ListViewSecState();
}

class _ListViewSecState extends State<ListViewSec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Screen'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
          )
        ],
      ),
    
    drawer: SideDiv.DrawerSide(),
    );
  }
}