import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Library',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepPurpleAccent,
          backgroundColor: Colors.deepPurple,
          textTheme: Typography.whiteCupertino),
      home: LibrarySearchPage(
        title: 'Media Library',
      ),
    );
  }
}

class LibrarySearchPage extends StatefulWidget {
  final String title;
  LibrarySearchPage({required this.title});

  @override
  State<StatefulWidget> createState() => _LibrarySearchPage();
}

class _LibrarySearchPage extends State<LibrarySearchPage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Library'),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          Text("Thing", style: textTheme.headline4),
          Text(
            "Small thing",
            style: textTheme.headline6,
          ),
          Text(
            "Large Thing",
            style: textTheme.headline1,
          ),
        ],
      ),
    );
  }
}
