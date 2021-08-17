import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medialibrary_app/helpers/validation.dart';

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
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              children: [
                DropdownButton<String>(
                    value: formatDropDown,
                    onChanged: (value) {
                      setState(() {
                        formatDropDown = value!;
                      });
                    },
                    items: formats.map<DropdownMenuItem<String>>((format) {
                      return DropdownMenuItem<String>(
                        child: Text(format),
                        value: format,
                      );
                    }).toList()),
                TextFormField(
                  validator: (value) => Validation.notEmpty(value),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Submit"))
              ],
            ),
          ),
        ));
  }
}
