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

  var phones=[
  {
  "model":"Iphone 16 pro",
  "storage":"512 GB/ 1 TB",
  "price":"\$ 999",
  "image":"https://www.apple.com/v/iphone-14/home/ai/images/meta/og__e2v8j0xq3g6m_og.png",
 },
  {
  "model":"Iphone 15 pro max",
  "storage":"128 GB",
  "price":"\$ 850",
  "image":"https://www.apple.com/v/iphone-14/home/ai/images/meta/og__e2v8j0xq3g6m_og.png",
 },
  {
  "model":"Iphone 13 pro",
  "storage":"256 GB",
  "price":"\$ 750",
  "image":"https://www.apple.com/v/iphone-14/home/ai/images/meta/og__e2v8j0xq3g6m_og.png",
 },
  {
  "model":"Samsung S24 Ultra",
  "storage":"512 GB/ 1 TB",
  "price":"\$ 1199",
  "image":"https://www.apple.com/v/iphone-14/home/ai/images/meta/og__e2v8j0xq3g6m_og.png",
 },
  {
  "model":"Samsung S23",
  "storage":"512 GB/ 1 TB",
  "price":"\$ 899",
  "image":"https://www.apple.com/v/iphone-14/home/ai/images/meta/og__e2v8j0xq3g6m_og.png",
 },
  {
  "model":"Iphone 11",
  "storage":"64 GB",
  "price":"\$ 550",
  "image":"https://www.apple.com/v/iphone-14/home/ai/images/meta/og__e2v8j0xq3g6m_og.png",
 },
  {
  "model":"Iphone 12 mini",
  "storage":"256 GB",
  "price":"\$ 600",
  "image":"https://www.apple.com/v/iphone-14/home/ai/images/meta/og__e2v8j0xq3g6m_og.png",
 },
 
  {
  "model":"Realme 11 ",
  "storage":"512 GB",
  "price":"\$ 449",
  "image":"https://www.apple.com/v/iphone-14/home/ai/images/meta/og__e2v8j0xq3g6m_og.png",
 },


 ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView.builder(
      //   itemCount: StudentInfo.length,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       title: Text('${StudentInfo[index]['name']}'),
      //       subtitle: Text('This is a list item'),
      //       leading: Icon(Icons.list),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     );
      //   },
      //   ),

       appBar: AppBar(
        title: Text("ListView Builder"),
        centerTitle: true,
      ),
      body: 
      Center(
       child: ListView.builder(
          itemBuilder:(context,index){
          return
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: 
             ListTile(
              title:Text(phones[index]["model"].toString()),
              subtitle: Text(phones[index]["storage"].toString()),
              leading: Icon(Icons.phone_android),
              trailing: Text(phones[index]["price"].toString()),
              ),
           );
        } ,
          itemCount: phones.length,
          )

      ),




    );
  }
}