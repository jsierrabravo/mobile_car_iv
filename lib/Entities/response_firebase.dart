import 'package:myfirstproject/Entities/game.dart';

class ResponseFirebase {

  List<Game>? response = [];

  ResponseFirebase({ this.response });

  ResponseFirebase.fromJson(Map<String, dynamic>? json) {

    if (json != null) {
      json.forEach((key, value) {
        response!.add(Game.fromJson(value));
      });
    }

  }

}