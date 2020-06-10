import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: XylophoneApp()));
}

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: notePlayerButton(Colors.red, 1)),
            Expanded(child: notePlayerButton(Colors.orange, 2)),
            Expanded(child: notePlayerButton(Colors.yellow, 3)),
            Expanded(child: notePlayerButton(Colors.green, 4)),
            Expanded(child: notePlayerButton(Colors.greenAccent, 5)),
            Expanded(child: notePlayerButton(Colors.blue, 6)),
            Expanded(child: notePlayerButton(Colors.purple, 7)),
          ],
        ),
      ),
    );
  }

  FlatButton notePlayerButton(Color color, int numberOfNote) {
    return FlatButton(
        color: color,
        onPressed: () {
          playSound(numberOfNote);
        },
        child: Text(''));
  }

  void playSound(int numberOfNote) {
    AudioCache player = AudioCache();
    player.play('note$numberOfNote.wav');
  }
}
