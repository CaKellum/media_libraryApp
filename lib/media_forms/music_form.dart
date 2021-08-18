import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medialibrary_app/helpers/view_helper.dart';
import 'package:medialibrary_app/model/controller.dart';
import 'package:medialibrary_app/objects/music.dart';

class MusicForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MusicForm();
}

class _MusicForm extends State<MusicForm> {
  final double inset = 10.0;
  final Set<String> format = {"CD", "cassette", "Vinyl"};
  final Key _formKey = GlobalKey<FormState>();
  String formatDropDown = "CD";
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Music'),
      ),
      body: ViewHelper.applyPadding(formContainer(context), this.inset),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }

  Form formContainer(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          ViewHelper.genericDropDown(format, formatDropDown, context, (value) {
            setState(() {
              formatDropDown = value!;
            });
          }),
          ViewHelper.applyPadding(ViewHelper.titleField(controller), 10),
          ElevatedButton(
              onPressed: () {
                MediaController().addMusic(Music(
                    albumTitle: controller.text,
                    artist: controller.text,
                    format: formatDropDown));
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
