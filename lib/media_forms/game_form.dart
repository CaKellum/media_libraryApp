import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GameForm();
}

class _GameForm extends State<GameForm> {
  Set<String> console = {
    "Ps4",
    "Ps3",
    "Ps2",
    "Ps",
    "Switch",
    "GameCube",
    "Sega Genisis",
    "Nintendo Entertainment System",
    "Game Boy Color",
    "Game Boy Advanced",
    "Nintendo DS",
    "Nintendo 3DS",
    "PC"
  };

  Set<String> typesOfGame = {"Video Game", "Board Game"};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Game'),
        ),
        body: Form(
            child: Column(
          children: [
            TextFormField(),
            TextFormField(),
            CupertinoButton(child: Text("Submit"), onPressed: () {})
          ],
        )));
  }
}
