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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 75.0,
                backgroundImage: NetworkImage(
                    'http://www.hotavatars.com/wp-content/uploads/2019/01/I80W1Q0.png'),
              ),
              Text(
                'Adrian Kowalski',
                style: TextStyle(
                    fontFamily: 'MetalMania',
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                    fontFamily: 'Piedra',
                    color: Colors.red.shade200,
                    fontSize: 25.0),
              ),
              Card(
                color: Colors.green.shade400,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text(
                      '+48 123 456 789',
                      style: TextStyle(
                          fontFamily: 'Piedra', color: Colors.red.shade200),
                    )),
              ),
              SizedBox(height: 10.0),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                color: Colors.green.shade400,
                child: ListTile(
                    leading: Icon(Icons.mail),
                    title: Text(
                      'mail@address.com',
                      style: TextStyle(
                          fontFamily: 'Piedra', color: Colors.red.shade200),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
