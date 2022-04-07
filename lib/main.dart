// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void TocarSom(int numeroNota) {
    final player = AudioCache();
    player.play('note$numeroNota.wav');
  }

  Expanded CriaBotao(Color cor, int numeroNota) {
    return Expanded(
      child: FlatButton(
        color: cor,
        onPressed: () {
          TocarSom(numeroNota);
        }, child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CriaBotao(Colors.red, 1),
                CriaBotao(Colors.blue, 2),
                CriaBotao(Colors.yellow, 3),
                CriaBotao(Colors.pink, 4),
                CriaBotao(Colors.orange, 5),
                CriaBotao(Colors.purple, 6),
                CriaBotao(Colors.teal, 7),
              ],
            ),
          ),
        ));
  }
}
