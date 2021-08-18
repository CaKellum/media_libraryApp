import 'package:flutter/material.dart';
import 'package:medialibrary_app/add_media.dart';
import 'package:medialibrary_app/media_forms/game_form.dart';
import 'package:medialibrary_app/media_forms/movie_form.dart';
import 'package:medialibrary_app/media_forms/music_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String title = 'Media Library';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: this.title,
      initialRoute: '/',
      routes: {
        '/': (context) => LibrarySearchPage(title: this.title),
        '/addMedia': (context) => AddMedia(),
        '/Movie': (context) => MovieForm(),
        '/Game': (context) => GameForm(),
        '/Music': (context) => MusicForm(),
      },
      theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepPurpleAccent,
          backgroundColor: Colors.deepPurple,
          textTheme: Typography.whiteCupertino),
    );
  }
}

class LibrarySearchPage extends StatefulWidget {
  final String title;
  LibrarySearchPage({required this.title});

  @override
  State<StatefulWidget> createState() => _LibrarySearchPage(this.title);
}

class _LibrarySearchPage extends State<LibrarySearchPage> {
  final String title;
  final List<String> entries = <String>['Movies', 'Music', 'Games'];
  _LibrarySearchPage(this.title);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    var colors = {
      "background": Theme.of(context).backgroundColor,
      "accent": Theme.of(context).accentColor,
      "primary": Theme.of(context).primaryColor
    };
    return Scaffold(
        appBar: AppBar(
          title: Text(
            this.title,
            style: textTheme.headline4,
          ),
        ),
        backgroundColor: colors["background"],
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_box_outlined),
          onPressed: () {
            Navigator.pushNamed(context, '/addMedia');
          },
        ),
        //TODO: Implement FutureBuilders that display the media lists
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                child: Text(
                  '${entries[index]}',
                  style: textTheme.headline6,
                ),
              );
            }));
  }
}
