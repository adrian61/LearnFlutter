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
          children: <Widget>[
            notePlayerButton(Colors.red, 1),
            notePlayerButton(Colors.orange, 2),
            notePlayerButton(Colors.yellow, 3),
            notePlayerButton(Colors.green, 4),
            notePlayerButton(Colors.greenAccent, 5),
            notePlayerButton(Colors.blue, 6),
            notePlayerButton(Colors.purple, 7)
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
