class Game {
  final int id = 0;
  final int userAdded;
  String title;
  String typeOfGame;
  String? console;

  Game(
      {required this.title,
      this.typeOfGame = "video",
      this.userAdded = 0,
      this.console});
}
