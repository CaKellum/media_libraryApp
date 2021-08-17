import 'package:flutter/cupertino.dart';

class Validation {
  static String? notEmpty(String? value) {
    // ignore: unnecessary_null_comparison
    return (value == null || value.isEmpty) ? 'Please fill out' : null;
  }
}

class StandardPadding {
  static Padding applyPadding(Widget widget, double inset) {
    return Padding(
      padding: EdgeInsets.all(inset),
      child: widget,
    );
  }
}
