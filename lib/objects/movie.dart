import 'package:flutter_of_app/objects/user.dart';

class Movie implements MediaObject {
  final int id = 0;
  final int userAdded;
  String title;
  String format;

  Movie({required this.title, this.format = "dvd", this.userAdded = 0});
}
