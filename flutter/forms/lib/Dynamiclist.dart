import 'package:flutter/material.dart';

class Dynamiclist extends StatefulWidget {
  const Dynamiclist({ Key? key }) : super(key: key);

  @override
  _DynamiclistState createState() => _DynamiclistState();
}

class _DynamiclistState extends State<Dynamiclist> {

  final StudentInfo = [
    {
      'id': 1,
      'name': 'John Christian',
    },
    {
      'id': 2,
      'name': 'John Hindu',
    },
    {
      'id': 3,
      'name': 'John Muslim',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: StudentInfo.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${StudentInfo[index]['name']}'),
            subtitle: Text('This is a list item'),
            leading: Icon(Icons.list),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
        ),
    );
  }
}