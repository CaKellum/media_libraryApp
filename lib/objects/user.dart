class User {
  int id;
  String name;

  User({required this.name, this.id = 0});

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
