import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medialibrary_app/helpers/validation.dart';

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
      body: StandardPadding.applyPadding(formContainer(context), this.inset),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }

  Form formContainer(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          formatDropDownList(context),
          StandardPadding.applyPadding(titleTextField(), this.inset),
          ElevatedButton(onPressed: () {}, child: Text("Submit"))
        ],
      ),
    );
  }

  TextFormField titleTextField() {
    return TextFormField(
      validator: (value) => Validation.notEmpty(value),
      controller: controller,
    );
  }

  DropdownButton<String> formatDropDownList(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: Theme.of(context).accentColor,
      value: formatDropDown,
      onChanged: ddOnChanged,
      items: ddItemList,
    );
  }

  List<DropdownMenuItem<String>> get ddItemList => format.map((e) {
        return DropdownMenuItem(
          child: Text(e),
          value: e,
        );
      }).toList();

  void ddOnChanged(value) {
    setState(() {
      formatDropDown = value!;
    });
  }
}
