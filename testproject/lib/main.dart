import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  AppBar appBar = AppBar(
    title: Text("SimpleApp"),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: appBar,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: Center(
                  child: Image.network(
                      'https://www.w3schools.com/w3css/img_lights.jpg'),
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                child: Center(
                  child: Text("random text"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
