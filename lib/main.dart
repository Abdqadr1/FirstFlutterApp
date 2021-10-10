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
    TechTerm (stack: "php",  text: "Laravel,CakePhp, Phalcon,Drupal"),
    TechTerm (stack: "java",  text: "javafx, android, Hibernate, javaServer"),
    TechTerm (stack: "javascript",  text: "react, angular, jquery, react native"),
  ];

  Widget stackTemplate(TechTerm term){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              term.stack,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 8.0,),
            Text(
              term.text,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87
              ),
            )
        ],
    ),
      ),
    );
  }
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
          return stackTemplate(term);
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
