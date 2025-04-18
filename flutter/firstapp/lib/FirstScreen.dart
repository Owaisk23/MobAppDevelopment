import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({ Key? key }) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      // body: 
      //   SingleChildScrollView(
      //     child: 
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Container(
      //             height: 100,
      //             width: 100,
      //             color: Colors.red,
      //           ),
      //           SizedBox(height: 10,),
      //           Container(
      //             height: 100,
      //             width: 100,
      //             color: Colors.green,
      //           ),
      //           SizedBox(height: 10,),
      //           Container(
      //             height: 100,
      //             width: 100,
      //             color: Colors.blue,
      //           ),
      //           SizedBox(height: 10,),
      //           Container(
      //             height: 100,
      //             width: 100,
      //             color: Colors.green,
      //           ),
      //           SizedBox(height: 10,),
      //           Container(
      //             height: 100,
      //             width: 100,
      //             color: Colors.blue,
      //           ),
      //           SizedBox(height: 10,),
      //           Container(
      //             height: 100,
      //             width: 100,
      //             color: Colors.green,
      //           ),
      //           SizedBox(height: 10,),
      //           Container(
      //             height: 100,
      //             width: 100,
      //             color: Colors.blue,
      //           ),
      //         ],
      //       ),
      //   ),
      
    );
  }
}