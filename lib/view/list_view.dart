import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class ListViewCustom extends StatefulWidget {
 
  const ListViewCustom({Key? key}) : super(key: key);

  @override
  State<ListViewCustom> createState() => _ListViewCustomState();
}

class _ListViewCustomState extends State<ListViewCustom> {

  List gamesList = [];

 @override
  Widget build(BuildContext context) {

  DatabaseReference databaseReference = FirebaseDatabase.instance.ref('/');
  final mygames = databaseReference.onValue.listen((event) {
    final data = event.snapshot.value as Map;
    final gamesInfo = data['games'];
    final games = gamesInfo.keys.toList();
    final _games = [];
    for (var i = 0 ; i < games.length; i++) {
      _games.add({
        'name': games[i], 
        'image': gamesInfo[games[i]]['image'],
        'description': gamesInfo[games[i]]['description']
      });
    }
    setState(() => gamesList = _games);
  }
  );

  return Scaffold(
    appBar: AppBar(
      title: const Text("Videogames list")
    ),
    body: ListView.builder(
      itemCount: gamesList.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) { 
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: Image.network(gamesList[index]["image"]!).image,
          ),
          title: Text(gamesList[index]["name"]!),
          onTap: () => showDialog<Image>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text(gamesList[index]["name"]),
              content: Wrap(
                spacing: 10.0,
                runSpacing: 20.0,
                children: [
                  Image(image: Image.network(gamesList[index]["image"]).image),
                  Text(gamesList[index]["description"])
                ],
              )
            )
          ),
        );
      },
    ),
  );
 }
}
