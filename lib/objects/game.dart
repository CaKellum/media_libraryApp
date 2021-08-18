class Game {
  int id;
  int userAdded;
  String title;
  String typeOfGame;
  String? console;

  Game(
      {required this.title,
      this.typeOfGame = "video",
      this.userAdded = 0,
      this.id = 0,
      this.console});

  Game.fromJson(Map<String, dynamic> json)
      : this.title = json['title'],
        this.typeOfGame = json['typeOfGame'],
        this.userAdded = json['userId'],
        this.id = json['id'],
        this.console = json['console'];

  Map<String, dynamic> toJSON() => {
        'id': id,
        'title': title,
        'typeOfGame': typeOfGame,
        'console': console,
        'format': console,
        'userId': userAdded,
      };
}
