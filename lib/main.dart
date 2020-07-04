import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Text('Ask Me Anything'),
        ),
        body: magicApp(),
      ),
    ));

class magicApp extends StatefulWidget {
  @override
  _magicAppState createState() => _magicAppState();
}

class _magicAppState extends State<magicApp> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
