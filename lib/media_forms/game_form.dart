import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GameForm();
}

class _GameForm extends State<GameForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Game'),
      ),
      body: Text('Game'),
    );
  }
}
