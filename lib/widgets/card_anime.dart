import 'package:flutter/material.dart';
import 'package:flutter_anime/models/anime_model.dart';
import 'package:flutter_anime/style/textStyle.dart';
class CardList extends StatefulWidget {
  CardList({Key? key, this.anime}) : super(key: key);

  final Anime? anime;

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return 
      Card(
        elevation: 5.0,
        margin: EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                widget.anime!.imageUrl,
                height: 180.0,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                              child:
                                  Text(widget.anime!.title, style: titleName)),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Total episode: ${widget.anime!.totalEpisodes}",
                        style: subTitleName,
                      ),
                      Text(
                        "Type: ${widget.anime!.type}",
                        style: subTitleName,
                      ),
                      Text(
                        "Rating: ${widget.anime!.rating}",
                        style: subTitleName,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}
