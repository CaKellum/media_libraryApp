import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medialibrary_app/helpers/view_helper.dart';
import 'package:medialibrary_app/model/controller.dart';
import 'package:medialibrary_app/objects/game.dart';

class GameForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GameForm();
}

class _GameForm extends State<GameForm> {
  final Set<String> console = {
    "None",
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
  final Set<String> typesOfGame = {"Video", "Board"};

  String consoleDropDown = "PS4";
  String togDropDown = "Video";
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Game'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: formContainer(context),
        ));
  }

  Form formContainer(BuildContext context) {
    return Form(
        child: Column(
      children: [
        ViewHelper.genericDropDown(console, consoleDropDown, context, (value) {
          setState(() {
            consoleDropDown = value!;
          });
        }),
        ViewHelper.genericDropDown(typesOfGame, togDropDown, context, (value) {
          setState(() {
            togDropDown = value!;
          });
        }),
        ViewHelper.titleField(controller),
        ElevatedButton(
            child: Text("Submit"),
            onPressed: () {
              MediaController().addGame(Game(
                  title: controller.text,
                  typeOfGame: togDropDown,
                  console: consoleDropDown));
            })
      ],
    ));
  }
}
