import 'package:medialibrary_app/objects/user.dart';

class Game implements MediaObject {
  int _id = 0;
  int userAdded;
  String title;
  String typeOfGame;
  String? console;

  Game(
      {required this.title,
      this.typeOfGame = "video",
      this.userAdded = 0,
      this.console});

  @override
  int getId() {
    return _id;
  }
}
