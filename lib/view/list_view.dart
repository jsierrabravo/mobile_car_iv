import 'package:flutter/material.dart';

import '../Entities/game.dart';
import '../Entities/response_firebase.dart';
import '../domain/firebase_connection.dart';

class ListViewCustom extends StatefulWidget {
 
  const ListViewCustom({Key? key}) : super(key: key);

  @override
  State<ListViewCustom> createState() => _ListViewCustomState();
}

class _ListViewCustomState extends State<ListViewCustom> {

  List<Game> gamesList = [];
  FirebaseConnection firebaseConnection = FirebaseConnection(); 
  late ResponseFirebase responseFirebase;

  Future<void> getFirebaseData() async {
    final data = await firebaseConnection.getData('games');
    final responseFirebase = ResponseFirebase.fromJson(data);
    setState(() => gamesList = responseFirebase.response!);

  }

 @override
  Widget build(BuildContext context) {

    if (gamesList.length == 0) {
      getFirebaseData();
    }
    
    // print(gamesList.length);

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
            backgroundImage: Image.network(gamesList[index].image!).image,
          ),
          title: Text(gamesList[index].name!),
          onTap: () => showDialog<Image>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text(gamesList[index].name!),
              content: Wrap(
                spacing: 10.0,
                runSpacing: 20.0,
                children: [
                  Image(image: Image.network(gamesList[index].image!).image),
                  Text(gamesList[index].description!)
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
