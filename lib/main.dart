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
      body: MyProfile(),
      backgroundColor: Colors.black87,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),

    );
  }
}

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0,0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/laptop.jpg"),
              radius: 50.0,
            ),
          ),
          Divider(
            height: 90.0,
              color: Colors.grey[200],
          ),
          Text(
              "Name",
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              fontFamily: "Sofia"
            ),
          ),
          SizedBox(height: 10.0,),
          Text(
              "Abolarinwa Quadri",
              style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 22.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
          ),
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  setState(() {
                    num++;
                  });
                },
                icon: Icon(
                  Icons.mail_outline,
                  size: 30.0,
                  color: Colors.white12,
                ),
              ),
              SizedBox(width: 7.0,),
              Text(
                'abolarinwaquadri@gmail.com',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                  letterSpacing: 1.0,
                ),
              )
            ],
          ),
          SizedBox(height: 40.0),
          Center(
            child: Text(
              "You clicked $num times",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
            ),
          )
        ],
      ),
    );
  }
}
