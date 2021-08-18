class Movie {
  int id;
  int userAdded;
  String title;
  String format;

  Movie(
      {required this.title,
      this.format = "dvd",
      this.userAdded = 1,
      this.id = 0});

  Movie.fromJSON(Map<String, dynamic> json)
      : id = json['id'],
        userAdded = json['userId'],
        title = json['title'],
        format = json['format'];

  Map<String, dynamic> toJSON() => {
        'id': id,
        'title': title,
        'format': format,
        'userId': userAdded,
      };
}
