import 'package:medialibrary_app/objects/game.dart';
import 'package:medialibrary_app/objects/movie.dart';
import 'package:medialibrary_app/objects/music.dart';

class JSONSerilization {
  static Map<String, dynamic> musicToJSON(Music media) => media.toJSON();
  static Map<String, dynamic> movieToJSON(Movie media) => media.toJSON();
  static Map<String, dynamic> gameToJSON(Game media) => media.toJSON();

  static Music musicFromJSON(Map<String, dynamic> json) => Music.fromJSON(json);
  static Movie movieFromJSON(Map<String, dynamic> json) => Movie.fromJSON(json);
  static Game gameFromJSON(Map<String, dynamic> json) => Game.fromJSON(json);
}
