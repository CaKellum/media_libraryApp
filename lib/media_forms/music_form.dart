import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MusicForm();
}

class _MusicForm extends State<MusicForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Game'),
      ),
      body: Text('Music'),
    );
  }
}
