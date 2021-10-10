import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterr/TechTerm.dart';

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
  List<TechTerm> lists = [
    TechTerm (stack: "php",  text: "laravel"),
    TechTerm (stack: "java",  text: "javafx"),
    TechTerm (stack: "javascript",  text: "react"),
  ];
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
        children: lists.map((term) {
          return Center(
            child: Text(
              '${term.stack} => ${term.text}',
              style: TextStyle (
                fontSize: 18,
                color: Colors.amberAccent,
                fontWeight: FontWeight.w400,
              ),
            ),
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),

    );
  }
}
