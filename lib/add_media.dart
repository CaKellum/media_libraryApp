import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddMedia extends StatefulWidget {
  const AddMedia({Key? key}) : super(key: key);
  State<AddMedia> createState() => _AddMedia();
}

class _AddMedia extends State<AddMedia> {
  final Set<String> mediaList = {
    'Movie',
    'Music',
    'Game',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Media",
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Text(
              "What Type of media are you adding?",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          ListView.builder(
            itemCount: mediaList.length,
            shrinkWrap: true,
            padding: EdgeInsets.all(5),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: CupertinoButton(
                    child: Text(
                      mediaList.elementAt(index),
                      style: Theme.of(context).textTheme.button,
                    ),
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      String route = '/';
                      switch (mediaList.elementAt(index)) {
                        case 'Movie':
                          route = '/Movie';
                          break;
                        case 'Music':
                          route = '/Music';
                          break;
                        case 'Game':
                          route = '/Game';
                          break;
                      }
                      Navigator.popAndPushNamed(context, route);
                    }),
              );
            },
          )
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
