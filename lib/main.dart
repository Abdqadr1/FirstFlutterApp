import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyProfile(),
  ));
}

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  List<String> lists = ["Android development", "iOS development", "Flutter Code"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Flutter"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: lists.map((str) {
          return Center(
            child: Text(
              str,
              style: TextStyle (
                fontSize: 18,
                color: Colors.amberAccent,
                fontWeight: FontWeight.w400,
              ),
            ),
          );
        }).toList(),
      ),
      backgroundColor: Colors.black87,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),

    );
  }
}
