import 'package:medialibrary_app/objects/game.dart';
import 'package:medialibrary_app/objects/movie.dart';
import 'package:medialibrary_app/objects/music.dart';

class JSONSerilization {
  Map<String, dynamic> toJSON(media) {
    return media.toJSON();
  }

  Music musicFromJSON(Map<String, dynamic> json) => Music.fromJSON(json);
  Movie movieFromJSON(Map<String, dynamic> json) => Movie.fromJSON(json);
  Game gameFromJSON(Map<String, dynamic> json) => Game.fromJSON(json);
}
