import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterr/TechTerm.dart';

class TermCard extends StatelessWidget {
  final TechTerm term;
  final Function delete;
  TermCard ({this.term, this.delete});


  @override
  Widget build(BuildContext context) {
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
            ),
            SizedBox(height: 8.0,),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text("Delete")
            )
          ],
        ),
      ),
    );
  }
}
