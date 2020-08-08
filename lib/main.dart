import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int nr) {
    final player = AudioCache();
    player.play('note$nr.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: FlatButton(
                  color: Colors.teal[100],
                  onPressed: () {
                    playSound(1);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal[200],
                  onPressed: () {
                    playSound(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal[300],
                  onPressed: () {
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal[400],
                  onPressed: () {
                    playSound(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal[500],
                  onPressed: () {
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal[600],
                  onPressed: () {
                    playSound(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal[700],
                  onPressed: () {
                    playSound(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
