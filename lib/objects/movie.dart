import 'package:medialibrary_app/objects/user.dart';

class Movie implements MediaObject {
  int _id = 0;
  final int userAdded;
  String title;
  String format;

  Movie({required this.title, this.format = "dvd", this.userAdded = 0});

  @override
  int getId() {
    return _id;
  }
}
