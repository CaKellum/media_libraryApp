class Music {
  int id;
  int userAdded;
  String albumTitle;
  String artist;
  String format;

  Music(
      {required this.albumTitle,
      this.format = "CD",
      this.userAdded = 0,
      this.id = 0,
      this.artist = ""});

  Music.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userAdded = json['userId'],
        albumTitle = json['title'],
        artist = json['artist'],
        format = json['format'];

  Map<String, dynamic> toJSON() => {
        'id': id,
        'title': albumTitle,
        'format': format,
        'artist': artist,
        'userId': userAdded,
      };
}
