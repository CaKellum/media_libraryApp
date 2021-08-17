import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MovieForm();
}

class _MovieForm extends State<MovieForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Game'),
      ),
      body: Text('Movie'),
    );
  }
}
