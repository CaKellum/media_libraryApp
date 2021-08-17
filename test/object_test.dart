import 'package:medialibrary_app/objects/game.dart';
import 'package:medialibrary_app/objects/movie.dart';
import 'package:medialibrary_app/objects/music.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Movie required data properly', () {
    final String title = "Slepless in seatle";
    final Movie movie = Movie(title: title);

    expect(movie.title, title);
  });

  test('Music required data properly', () {
    final String title = "Black album";
    final Music music = Music(albumTitle: title);
    expect(music.albumTitle, title);
  });

  test('Games required data properly', () {
    final String title = "Dungeons";
    final Game game = Game(title: title);
    expect(game.title, title);
  });
}
