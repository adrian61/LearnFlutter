import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Ask Me Anything',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.blue,
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: FlatButton(
              onPressed: () {
                setState(() {
                  value = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$value.png'))),
    );
  }
}
