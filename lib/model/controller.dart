import 'package:medialibrary_app/model/JSON_seralization.dart';
import 'package:medialibrary_app/model/api_comm.dart';
import 'package:medialibrary_app/objects/game.dart';
import 'package:medialibrary_app/objects/movie.dart';
import 'package:medialibrary_app/objects/music.dart';

class MediaController {
  ApiComunication _aComm = new ApiComunication();

  void addMusic(Music music) {
    _aComm.requestPost(JSONSerilization.musicToJSON(music),
        'http://192.168.1.26:8080/api/media_library/music');
  }

  void addMovie(Movie movie) {
    _aComm.requestPost(JSONSerilization.movieToJSON(movie),
        'http://192.168.1.26:8080/api/media_library/movies');
  }

  void addGame(Game game) {
    _aComm.requestPost(JSONSerilization.gameToJSON(game),
        'http://192.168.1.26:8080/api/media_library/games');
  }

  Future<List<Game>> getGames() {
    Future<Iterable<Map<String, dynamic>>>? result =
        _aComm.requestGet('http://192.168.1.26:8080/api/media_library/games')
            as Future<Iterable<Map<String, dynamic>>>?;
    List<Game> list = [];
    result!.then((value) {
      value.forEach((json) {
        list.add(JSONSerilization.gameFromJSON(json));
      });
    }).onError((error, stackTrace) {
      print('error $error');
    });
    return Future.value(list);
  }

  Future<List<Movie>> getMovies() {
    Future<Iterable<Map<String, dynamic>>>? result =
        _aComm.requestGet('http://192.168.1.26:8080/api/media_library/movies')
            as Future<Iterable<Map<String, dynamic>>>?;
    List<Movie> list = [];
    result!.then((value) {
      value.forEach((json) {
        list.add(JSONSerilization.movieFromJSON(json));
      });
    }).onError((error, stackTrace) {
      print('error $error');
    });
    return Future.value(list);
  }

  Future<List<Music>> getMusic() {
    Future<Iterable<Map<String, dynamic>>>? result =
        _aComm.requestGet('http://192.168.1.26:8080/api/media_library/music')
            as Future<Iterable<Map<String, dynamic>>>?;
    List<Music> list = [];
    result!.then((value) {
      value.forEach((json) {
        list.add(JSONSerilization.musicFromJSON(json));
      });
    }).onError((error, stackTrace) {
      print('error $error');
    });
    return Future.value(list);
  }
  //TODO:Implement single obj get requests
}
