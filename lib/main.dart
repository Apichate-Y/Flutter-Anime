import 'package:flutter/material.dart';
import 'package:flutter_anime/api/get.dart';
import 'package:flutter_anime/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Anime',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
