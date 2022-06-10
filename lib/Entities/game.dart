class Game {
  
  final String? name;
  final String? image;
  final String? description;

  Game({this.name, this.image, this.description});

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      name: json["name"],
      image: json["image"],
      description: json["description"]
    );
  }

}