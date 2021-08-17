import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medialibrary_app/helpers/validation.dart';

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
        ddConsoles(),
        ddTog(),
        titleTextField(),
        ElevatedButton(child: Text("Submit"), onPressed: () {})
      ],
    ));
  }

  TextFormField titleTextField() {
    return TextFormField(
      validator: (value) => Validation.notEmpty(value),
      controller: controller,
    );
  }

  DropdownButton<String> ddTog() {
    return DropdownButton<String>(
        value: togDropDown,
        onChanged: (value) {
          setState(() {
            togDropDown = value!;
          });
        },
        items: togList());
  }

  List<DropdownMenuItem<String>> togList() {
    return typesOfGame.map<DropdownMenuItem<String>>((str) {
      return DropdownMenuItem(
        child: Text(str),
        value: str,
      );
    }).toList();
  }

  DropdownButton<String> ddConsoles() {
    return DropdownButton<String>(
        value: consoleDropDown,
        onChanged: (value) {
          setState(() {
            consoleDropDown = value!;
          });
        },
        items: consoleList());
  }

  List<DropdownMenuItem<String>> consoleList() {
    return console.map<DropdownMenuItem<String>>((str) {
      return DropdownMenuItem(
        child: Text(str),
        value: str,
      );
    }).toList();
  }
}
