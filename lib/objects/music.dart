import 'package:medialibrary_app/objects/user.dart';

class Music implements MediaObject {
  int _id = 0;
  int userAdded;
  String albumTitle;
  String format;

  Music({required this.albumTitle, this.format = "CD", this.userAdded = 0});

  @override
  int getId() {
    return _id;
  }
}
