import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class CallFirebase extends StatelessWidget {
  const CallFirebase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }

  void callDatabase() {
    DatabaseReference databaseReference =
        FirebaseDatabase.instance.ref('/');
    databaseReference.onValue.listen((event) {
      final data = event.snapshot.value as Map;
      print('hola');
      print(data['games']);
    });
  }
}