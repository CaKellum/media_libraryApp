class Movie {
  int id;
  int userAdded;
  String title;
  String format;

  Movie(
      {required this.title,
      this.format = "dvd",
      this.userAdded = 0,
      this.id = 0});

  Movie.fromJSON(Map<String, dynamic> json)
      : id = json['id'],
        userAdded = json['userId'],
        title = json['title'],
        format = json['format'];
}
