import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_of_app/objects/game.dart';
import 'package:flutter_of_app/objects/movie.dart';
import 'package:flutter_of_app/objects/music.dart';

class AddMedia extends StatelessWidget {
  final Map<String, Object> mediaList = {
    'Media': Null,
    'Movie': Movie,
    'Music': Music,
    'Game': Game,
  };

  List<DropdownMenuItem> dropDownItems() {
    List<DropdownMenuItem> list = [];
    mediaList.forEach((key, value) {
      list.add(DropdownMenuItem(
        child: Text(key),
        value: value,
      ));
    });
    print(list);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    var list = dropDownItems();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Media",
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: Column(
        children: [Text("What type of media?"), DropdownButton(items: list)],
      ),
    );
  }
}
