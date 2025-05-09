//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:moodbeat_core/src/date_serializer.dart';
import 'package:moodbeat_core/src/model/date.dart';

import 'package:moodbeat_core/src/model/auth_profile_response.dart';
import 'package:moodbeat_core/src/model/db_artist.dart';
import 'package:moodbeat_core/src/model/db_diary_entry.dart';
import 'package:moodbeat_core/src/model/db_fulltrack.dart';
import 'package:moodbeat_core/src/model/db_genre.dart';
import 'package:moodbeat_core/src/model/db_get_user_by_id_row.dart';
import 'package:moodbeat_core/src/model/db_list_diary_entries_by_date_range_row.dart';
import 'package:moodbeat_core/src/model/db_list_selected_presets_by_user_row.dart';
import 'package:moodbeat_core/src/model/db_list_selected_stressful_presets_by_user_row.dart';
import 'package:moodbeat_core/src/model/db_mood_preset.dart';
import 'package:moodbeat_core/src/model/db_playlist.dart';
import 'package:moodbeat_core/src/model/db_user_selected_genre.dart';
import 'package:moodbeat_core/src/model/db_user_selected_preset.dart';
import 'package:moodbeat_core/src/model/db_user_selected_stressful_preset.dart';
import 'package:moodbeat_core/src/model/db_user_setting.dart';
import 'package:moodbeat_core/src/model/fiber_error.dart';
import 'package:moodbeat_core/src/model/playlists_full_playlist.dart';
import 'package:moodbeat_core/src/model/profile_select_artists_mutation.dart';
import 'package:moodbeat_core/src/model/profile_select_default_preset_mutation.dart';
import 'package:moodbeat_core/src/model/profile_select_song_genres_mutation.dart';
import 'package:moodbeat_core/src/model/profile_select_stressful_preset_mutation.dart';
import 'package:moodbeat_core/src/model/spotify_full_track.dart';
import 'package:moodbeat_core/src/model/spotify_image.dart';
import 'package:moodbeat_core/src/model/spotify_linked_from_info.dart';
import 'package:moodbeat_core/src/model/spotify_simple_album.dart';
import 'package:moodbeat_core/src/model/spotify_simple_artist.dart';
import 'package:moodbeat_core/src/model/spotify_track_external_ids.dart';
import 'package:moodbeat_core/src/model/update_user_settings_mutation.dart';

part 'serializers.g.dart';

@SerializersFor([
  AuthProfileResponse,
  DbArtist,
  DbDiaryEntry,
  DbFulltrack,
  DbGenre,
  DbGetUserByIdRow,
  DbListDiaryEntriesByDateRangeRow,
  DbListSelectedPresetsByUserRow,
  DbListSelectedStressfulPresetsByUserRow,
  DbMoodPreset,
  DbPlaylist,
  DbUserSelectedGenre,
  DbUserSelectedPreset,
  DbUserSelectedStressfulPreset,
  DbUserSetting,
  FiberError,
  PlaylistsFullPlaylist,
  ProfileSelectArtistsMutation,
  ProfileSelectDefaultPresetMutation,
  ProfileSelectSongGenresMutation,
  ProfileSelectStressfulPresetMutation,
  SpotifyFullTrack,
  SpotifyImage,
  SpotifyLinkedFromInfo,
  SpotifySimpleAlbum,
  SpotifySimpleArtist,
  SpotifyTrackExternalIDs,
  UpdateUserSettingsMutation,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DbListDiaryEntriesByDateRangeRow)]),
        () => ListBuilder<DbListDiaryEntriesByDateRangeRow>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DbListSelectedStressfulPresetsByUserRow)]),
        () => ListBuilder<DbListSelectedStressfulPresetsByUserRow>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SpotifyFullTrack)]),
        () => ListBuilder<SpotifyFullTrack>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DbArtist)]),
        () => ListBuilder<DbArtist>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DbListSelectedPresetsByUserRow)]),
        () => ListBuilder<DbListSelectedPresetsByUserRow>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DbUserSelectedGenre)]),
        () => ListBuilder<DbUserSelectedGenre>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DbGenre)]),
        () => ListBuilder<DbGenre>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DbMoodPreset)]),
        () => ListBuilder<DbMoodPreset>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
