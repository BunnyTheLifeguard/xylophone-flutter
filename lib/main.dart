import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int nr) {
    final player = AudioCache();
    player.play('note$nr.wav');
  }

  buildKey({int color, int sound}) {
    return Expanded(
      child: FlatButton(
        color: Colors.teal[color],
        onPressed: () {
          playSound(sound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: 700, sound: 1),
              buildKey(color: 600, sound: 2),
              buildKey(color: 500, sound: 3),
              buildKey(color: 400, sound: 4),
              buildKey(color: 300, sound: 5),
              buildKey(color: 200, sound: 6),
              buildKey(color: 100, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
