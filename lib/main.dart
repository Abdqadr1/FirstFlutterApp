import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Flutter"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Expanded(
              flex: 3,
                child: Image.asset('assets/sand.jpg')
            ),
           Expanded(
             flex: 3,
             child: Container(
               color: Colors.amberAccent,
               padding: EdgeInsets.all(20.0),
               child: Text("1"),
             ),
           ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.greenAccent,
                padding: EdgeInsets.all(20.0),
                child: Text("two"),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.redAccent,
                padding: EdgeInsets.all(20.0),
                child: Text("tres"),
              ),
            ),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),

    );
  }
}