import 'package:dio/dio.dart';
import 'package:flutter_anime/models/anime_model.dart';

class Get {
  final _dio = Dio();
  final _baseUrl = "https://api.jikan.moe/v3/user/Nekomata1037/animelist/all";

  Future getAnime() async {
    try {
      var response = await _dio.get(_baseUrl);

      List<Anime> animes = [];
      Map<String, dynamic> data = response.data;

      if (response.statusCode == 200) {
        for (var anime in data["anime"]) {
          animes.add(Anime.fromJson(anime));
        }
        return animes;
      } else {
        return data;
      }
    } catch (e) {
      print(e);
    }
  }
}
