import 'package:flutter/material.dart';
import 'package:medialibrary_app/helpers/validation.dart';

class ViewHelper {
  static Padding applyPadding(Widget widget, double inset) {
    return Padding(
      padding: EdgeInsets.all(inset),
      child: widget,
    );
  }

  static DropdownButton<String> genericDropDown(Set<String> items,
      String defaultValue, BuildContext context, Function(String?) onChanged) {
    return DropdownButton<String>(
      dropdownColor: Theme.of(context).accentColor,
      onChanged: onChanged,
      value: defaultValue,
      items: items
          .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList(),
    );
  }

  static TextFormField titleField(controller) {
    return TextFormField(
      validator: (value) => Validation.notEmpty(value),
      controller: controller,
    );
  }
}
