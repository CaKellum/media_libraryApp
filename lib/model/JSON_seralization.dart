import 'package:medialibrary_app/objects/game.dart';
import 'package:medialibrary_app/objects/movie.dart';
import 'package:medialibrary_app/objects/music.dart';

class JSONSerilization {
  Map<String, dynamic> musicToJSON(Music media) => media.toJSON();
  Map<String, dynamic> movieToJSON(Movie media) => media.toJSON();
  Map<String, dynamic> gameToJSON(Game media) => media.toJSON();

  Music musicFromJSON(Map<String, dynamic> json) => Music.fromJSON(json);
  Movie movieFromJSON(Map<String, dynamic> json) => Movie.fromJSON(json);
  Game gameFromJSON(Map<String, dynamic> json) => Game.fromJSON(json);
}
