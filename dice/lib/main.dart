import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Dice App'),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceValue = 1;
  int rightDiceValue = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                leftDiceValue = Random().nextInt(6) + 1;
                rightDiceValue = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset('images/dice$leftDiceValue.png'),
          )),
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                leftDiceValue = Random().nextInt(6) + 1;
                rightDiceValue = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset('images/dice$rightDiceValue.png'),
          )),
        ],
      ),
    );
  }
}
