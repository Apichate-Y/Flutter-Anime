import 'package:flutter_anime/models/licensor_model.dart';
import 'package:flutter_anime/models/studio_model.dart';

class Anime {
  late int malId;
  late String title;
  late String videoUrl;
  late String url;
  late String imageUrl;
  late String type;
  late int watchingStatus;
  late int score;
  late int watchedEpisodes;
  late int totalEpisodes;
  late int airingStatus;
  late String seasonName;
  late int seasonYear;
  late bool hasEpisodeVideo;
  late bool hasPromoVideo;
  late bool hasVideo;
  late bool isRewatching;
  late dynamic tags;
  late String rating;
  late String startDate;
  late String endDate;
  late dynamic watchStartDate;
  late dynamic watchEndDate;
  late dynamic days;
  late dynamic storage;
  late String priority;
  late bool addedToList;
  late List<Studios> studios;
  late List<Licensors> licensors;

  Anime(
      this.malId,
      this.title,
      this.videoUrl,
      this.url,
      this.imageUrl,
      this.type,
      this.watchingStatus,
      this.score,
      this.watchedEpisodes,
      this.totalEpisodes,
      this.airingStatus,
      this.seasonName,
      this.seasonYear,
      this.hasEpisodeVideo,
      this.hasPromoVideo,
      this.hasVideo,
      this.isRewatching,
      this.tags,
      this.rating,
      this.startDate,
      this.endDate,
      this.watchStartDate,
      this.watchEndDate,
      this.days,
      this.storage,
      this.priority,
      this.addedToList,
      this.studios,
      this.licensors);

  Anime.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    title = json['title'];
    videoUrl = json['video_url'];
    url = json['url'];
    imageUrl = json['image_url'];
    type = json['type'];
    watchingStatus = json['watching_status'];
    score = json['score'];
    watchedEpisodes = json['watched_episodes'];
    totalEpisodes = json['total_episodes'];
    airingStatus = json['airing_status'];
    seasonName = json['season_name'];
    seasonYear = json['season_year'];
    hasEpisodeVideo = json['has_episode_video'];
    hasPromoVideo = json['has_promo_video'];
    hasVideo = json['has_video'];
    isRewatching = json['is_rewatching'];
    tags = json['tags'];
    rating = json['rating'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    watchStartDate = json['watch_start_date'];
    watchEndDate = json['watch_end_date'];
    days = json['days'];
    storage = json['storage'];
    priority = json['priority'];
    addedToList = json['added_to_list'];
    if (json['studios'] != null) {
      studios = <Studios>[];
      json['studios'].forEach((v) {
        studios.add(new Studios.fromJson(v));
      });
    }
    if (json['licensors'] != null) {
      licensors = <Licensors>[];
      json['licensors'].forEach((v) {
        licensors.add(new Licensors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mal_id'] = this.malId;
    data['title'] = this.title;
    data['video_url'] = this.videoUrl;
    data['url'] = this.url;
    data['image_url'] = this.imageUrl;
    data['type'] = this.type;
    data['watching_status'] = this.watchingStatus;
    data['score'] = this.score;
    data['watched_episodes'] = this.watchedEpisodes;
    data['total_episodes'] = this.totalEpisodes;
    data['airing_status'] = this.airingStatus;
    data['season_name'] = this.seasonName;
    data['season_year'] = this.seasonYear;
    data['has_episode_video'] = this.hasEpisodeVideo;
    data['has_promo_video'] = this.hasPromoVideo;
    data['has_video'] = this.hasVideo;
    data['is_rewatching'] = this.isRewatching;
    data['tags'] = this.tags;
    data['rating'] = this.rating;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['watch_start_date'] = this.watchStartDate;
    data['watch_end_date'] = this.watchEndDate;
    data['days'] = this.days;
    data['storage'] = this.storage;
    data['priority'] = this.priority;
    data['added_to_list'] = this.addedToList;
    data['studios'] = this.studios.map((v) => v.toJson()).toList();
    data['licensors'] = this.licensors.map((v) => v.toJson()).toList();
    return data;
  }
}
