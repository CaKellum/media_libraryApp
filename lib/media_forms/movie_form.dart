import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medialibrary_app/helpers/view_helper.dart';
import 'package:medialibrary_app/model/controller.dart';
import 'package:medialibrary_app/objects/movie.dart';

class MovieForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MovieForm();
}

class _MovieForm extends State<MovieForm> {
  final Set<String> formats = {"Vhs", "DVD", "Blu-Ray"};
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    String formatDropDown = formats.first;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Movie'),
      ),
      body: ViewHelper.applyPadding(formContainer(formatDropDown, context), 10),
    );
  }

  Form formContainer(String formatDropDown, BuildContext context) {
    return Form(
      child: Column(
        children: [
          ViewHelper.genericDropDown(formats, formatDropDown, context, (value) {
            setState(() {
              formatDropDown = value!;
            });
          }),
          ViewHelper.applyPadding(ViewHelper.titleField(controller), 10),
          ElevatedButton(
              onPressed: () {
                MediaController().addMovie(
                    Movie(title: controller.text, format: formatDropDown));
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
