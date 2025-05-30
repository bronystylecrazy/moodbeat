import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:moodbeat/config.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

@module
abstract class ApiProvider {
  @singleton
  MoodbeatCore moodbeatCore(Dio dio, IConfig config) {
    return MoodbeatCore(dio: dio, basePathOverride: config.apiBaseUrl);
  }

  @singleton
  AuthApi authApi(Dio dio, IConfig config) {
    final core = MoodbeatCore(dio: dio, basePathOverride: config.apiBaseUrl);
    return core.getAuthApi();
  }

  @singleton
  ProfileApi profileApi(Dio dio, IConfig config) {
    final core = MoodbeatCore(dio: dio, basePathOverride: config.apiBaseUrl);
    return core.getProfileApi();
  }

  @singleton
  DiaryApi diaryApi(Dio dio, IConfig config) {
    final core = MoodbeatCore(dio: dio, basePathOverride: config.apiBaseUrl);
    return core.getDiaryApi();
  }

  @singleton
  TrackApi trackApi(Dio dio, IConfig config) {
    final core = MoodbeatCore(dio: dio, basePathOverride: config.apiBaseUrl);
    return core.getTrackApi();
  }

  @singleton
  ArtistApi artistApi(Dio dio, IConfig config) {
    final core = MoodbeatCore(dio: dio, basePathOverride: config.apiBaseUrl);
    return core.getArtistApi();
  }

  @singleton
  PlaylistApi playlistApi(Dio dio, IConfig config) {
    final core = MoodbeatCore(dio: dio, basePathOverride: config.apiBaseUrl);
    return core.getPlaylistApi();
  }

  @singleton
  SongGenresApi songGenresApi(Dio dio, IConfig config) {
    final core = MoodbeatCore(dio: dio, basePathOverride: config.apiBaseUrl);
    return core.getSongGenresApi();
  }

  @singleton
  MoodPresetApi moodPresetApi(Dio dio, IConfig config) {
    final core = MoodbeatCore(dio: dio, basePathOverride: config.apiBaseUrl);
    return core.getMoodPresetApi();
  }
}
