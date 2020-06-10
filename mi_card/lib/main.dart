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
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    'http://www.hotavatars.com/wp-content/uploads/2019/01/I80W1Q0.png'),
              ),
              Text(
                'Adrian Kowalski',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
              Container(
                child: Center(
                  child: ButtonBar(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
