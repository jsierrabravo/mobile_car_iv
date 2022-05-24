import 'package:flutter/material.dart';
import 'package:myfirstproject/examples.dart';
import 'package:myfirstproject/view/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    ); 
  }
}

