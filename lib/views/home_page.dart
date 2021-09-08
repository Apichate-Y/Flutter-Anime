import 'package:flutter/material.dart';
import 'package:flutter_anime/api/get.dart';
import 'package:flutter_anime/models/anime_model.dart';
import 'package:flutter_anime/views/detail_page.dart';
import 'package:flutter_anime/widgets/card_anime.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anime"),
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder(
        future: Get().getAnime(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError || !snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(color: Colors.black),
            );
          }
          return ListView.builder(
            itemBuilder: (context, i) {
              Anime anime = snapshot.data[i];
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailPage(anime: snapshot.data[i])));
                  },
                  child: CardList(anime: anime));
            },
          );
        },
      ),
    );
  }
}
