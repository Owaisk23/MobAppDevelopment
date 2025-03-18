import 'package:flutter/material.dart';

class DarazScreen extends StatefulWidget {
  const DarazScreen({ Key? key }) : super(key: key);

  @override
  _DarazScreenState createState() => _DarazScreenState();
}

class _DarazScreenState extends State<DarazScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: Text('Daraz Screen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('banner.jpg'), fit: BoxFit.cover),
              ),
            height: 100,
            width: double.infinity,
            
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('circle1.jpg')),
                  borderRadius: BorderRadius.circular(50)
                ),
                height: 70,
                width: 70,
              ),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('circle2.jpg')),
                  borderRadius: BorderRadius.circular(50)
                ),
                height: 70,
                width: 70,
              ),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('circle3.jpg')),
                  borderRadius: BorderRadius.circular(50)
                ),
                height: 70,
                width: 70,
              ),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('circle4.jpg')),
                  borderRadius: BorderRadius.circular(50)
                ),
                height: 70,
                width: 70,
              ),
            ],
          )
        ],
      ),
    );
  }
}