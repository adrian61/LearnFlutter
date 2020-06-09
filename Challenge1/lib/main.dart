import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 100,
                child: Center(child: Text("a")),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                      child: Center(child: Text("a")),
                    ),
                    Container(
                      color: Colors.blue,
                      width: 100,
                      height: 100,
                      child: Center(child: Text("a")),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.black,
                width: 100,
                child: Center(child: Text("v")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
