import 'package:flutter/material.dart';
import 'package:flutter_anime/models/anime_model.dart';
import 'package:flutter_anime/style/textStyle.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key, this.anime}) : super(key: key);

  final Anime? anime;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.network(widget.anime!.imageUrl),
              SizedBox(height: 10.0),
              Text(widget.anime!.title, style: titleName),
              SizedBox(height: 30.0),
              Text("Total episode: ${widget.anime!.totalEpisodes}", style: detailText),
              Text("Year: ${widget.anime!.seasonYear}", style: detailText),
              Text("Season: ${widget.anime!.seasonName}", style: detailText),
              Text("Type: ${widget.anime!.type}", style: detailText),
              Text("Rating: ${widget.anime!.rating}", style: detailText),
              Text("Studio: ${widget.anime!.studios[0].name}", style: detailText),
            ],
          ),
        ),
      ),
    );
  }
}
