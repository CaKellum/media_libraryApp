import 'package:medialibrary_app/objects/user.dart';

class Music implements MediaObject {
  final int id = 0;
  final int userAdded;
  String albumTitle;
  String format;

  Music({required this.albumTitle, this.format = "CD", this.userAdded = 0});
}
