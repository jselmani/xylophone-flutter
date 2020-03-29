import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

/*
* => is used when there is only a single line of code in the function.
* For example, int add() => 5 + 5; is the equivalent to the function below.
*
* int add() {
*   return 5 + 2;
* }
*
* int add(int n1, int n2) => n1 + n2; is also the same thing.
*
* It's nice shorthand syntax to save space and improve readability.
* */

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(String filename) {
    player.play(filename);
  }

  Expanded buildKey(Color color, String soundFile) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundFile);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 'note1.wav'),
              buildKey(Colors.orange, 'note2.wav'),
              buildKey(Colors.yellow, 'note3.wav'),
              buildKey(Colors.green, 'note4.wav'),
              buildKey(Colors.green.shade900, 'note5.wav'),
              buildKey(Colors.blue, 'note6.wav'),
              buildKey(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
