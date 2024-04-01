import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded buildkey({required int num1, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(num1);
        },
        style: TextButton.styleFrom(
            backgroundColor: color,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero))),
        child: const Text(' '),
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
              buildkey(num1: 1, color: Colors.lightGreen),
              buildkey(num1: 2, color: Colors.red.shade900),
              buildkey(num1: 3, color: Colors.blue),
              buildkey(num1: 4, color: Colors.pink.shade700),
              buildkey(num1: 5, color: Colors.yellow),
              buildkey(num1: 6, color: Colors.tealAccent),
              buildkey(num1: 7, color: Colors.deepOrange),
            ],
          ),
        ),
      ),
    );
  }
}
