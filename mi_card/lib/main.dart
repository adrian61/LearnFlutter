import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color _iconColor = Colors.white;
  Color _textColor = Colors.white;
  Color _dividerColor = Color(0xFFBDBDBD);
  Color _primaryTextColor = Color(0xFF212121);
  Color _secondaryTextColor = Color(0xFF757575);
  Color _primaryColor = Color(0xFFE91E63);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _primaryColor,
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
                    color: _primaryTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                    fontFamily: 'Piedra',
                    color: _secondaryTextColor,
                    fontSize: 25.0),
              ),
              SizedBox(
                width: 125,
                child: Divider(
                  height: 10,
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
              Card(
                color: Colors.green.shade400,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: _iconColor,
                    ),
                    title: Text(
                      '+48 123 456 789',
                      style: TextStyle(fontFamily: 'Piedra', color: _textColor),
                    )),
              ),
              SizedBox(),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                color: Colors.green.shade400,
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: _iconColor,
                  ),
                  title: Text(
                    'mail@address.com',
                    style: TextStyle(fontFamily: 'Piedra', color: _textColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
