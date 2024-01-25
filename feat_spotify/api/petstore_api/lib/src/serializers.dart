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
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/add_tracks_to_playlist_request.dart';
import 'package:openapi/src/model/album_base.dart';
import 'package:openapi/src/model/album_object.dart';
import 'package:openapi/src/model/album_object_all_of_external_ids.dart';
import 'package:openapi/src/model/album_object_all_of_tracks.dart';
import 'package:openapi/src/model/album_restriction_object.dart';
import 'package:openapi/src/model/artist_discography_album_object.dart';
import 'package:openapi/src/model/artist_object.dart';
import 'package:openapi/src/model/audio_analysis_object.dart';
import 'package:openapi/src/model/audio_analysis_object_meta.dart';
import 'package:openapi/src/model/audio_analysis_object_track.dart';
import 'package:openapi/src/model/audio_features_object.dart';
import 'package:openapi/src/model/audiobook_base.dart';
import 'package:openapi/src/model/audiobook_object.dart';
import 'package:openapi/src/model/audiobook_object_all_of_chapters.dart';
import 'package:openapi/src/model/author_object.dart';
import 'package:openapi/src/model/category_object.dart';
import 'package:openapi/src/model/change_playlist_details_request.dart';
import 'package:openapi/src/model/chapter_base.dart';
import 'package:openapi/src/model/chapter_object.dart';
import 'package:openapi/src/model/chapter_object_all_of_audiobook.dart';
import 'package:openapi/src/model/chapter_restriction_object.dart';
import 'package:openapi/src/model/context_object.dart';
import 'package:openapi/src/model/copyright_object.dart';
import 'package:openapi/src/model/create_playlist_request.dart';
import 'package:openapi/src/model/currently_playing_context_object.dart';
import 'package:openapi/src/model/cursor_object.dart';
import 'package:openapi/src/model/cursor_paging_object.dart';
import 'package:openapi/src/model/cursor_paging_play_history_object.dart';
import 'package:openapi/src/model/cursor_paging_simplified_artist_object.dart';
import 'package:openapi/src/model/device_object.dart';
import 'package:openapi/src/model/disallows_object.dart';
import 'package:openapi/src/model/episode_base.dart';
import 'package:openapi/src/model/episode_object.dart';
import 'package:openapi/src/model/episode_object_all_of_show.dart';
import 'package:openapi/src/model/episode_restriction_object.dart';
import 'package:openapi/src/model/error_object.dart';
import 'package:openapi/src/model/explicit_content_settings_object.dart';
import 'package:openapi/src/model/external_id_object.dart';
import 'package:openapi/src/model/external_url_object.dart';
import 'package:openapi/src/model/follow_artists_users_request.dart';
import 'package:openapi/src/model/follow_playlist_request.dart';
import 'package:openapi/src/model/followers_object.dart';
import 'package:openapi/src/model/get_a_users_available_devices200_response.dart';
import 'package:openapi/src/model/get_an_album401_response.dart';
import 'package:openapi/src/model/get_an_artists_top_tracks200_response.dart';
import 'package:openapi/src/model/get_available_markets200_response.dart';
import 'package:openapi/src/model/get_categories200_response.dart';
import 'package:openapi/src/model/get_followed200_response.dart';
import 'package:openapi/src/model/get_multiple_albums200_response.dart';
import 'package:openapi/src/model/get_multiple_artists200_response.dart';
import 'package:openapi/src/model/get_multiple_audiobooks200_response.dart';
import 'package:openapi/src/model/get_multiple_episodes200_response.dart';
import 'package:openapi/src/model/get_multiple_shows200_response.dart';
import 'package:openapi/src/model/get_new_releases200_response.dart';
import 'package:openapi/src/model/get_recommendation_genres200_response.dart';
import 'package:openapi/src/model/get_several_audio_features200_response.dart';
import 'package:openapi/src/model/get_several_chapters200_response.dart';
import 'package:openapi/src/model/get_users_top_artists_and_tracks200_response.dart';
import 'package:openapi/src/model/get_users_top_artists_and_tracks200_response_all_of_items_inner.dart';
import 'package:openapi/src/model/image_object.dart';
import 'package:openapi/src/model/linked_track_object.dart';
import 'package:openapi/src/model/narrator_object.dart';
import 'package:openapi/src/model/paging_artist_discography_album_object.dart';
import 'package:openapi/src/model/paging_artist_object.dart';
import 'package:openapi/src/model/paging_featured_playlist_object.dart';
import 'package:openapi/src/model/paging_object.dart';
import 'package:openapi/src/model/paging_playlist_object.dart';
import 'package:openapi/src/model/paging_playlist_track_object.dart';
import 'package:openapi/src/model/paging_saved_album_object.dart';
import 'package:openapi/src/model/paging_saved_episode_object.dart';
import 'package:openapi/src/model/paging_saved_show_object.dart';
import 'package:openapi/src/model/paging_saved_track_object.dart';
import 'package:openapi/src/model/paging_simplified_album_object.dart';
import 'package:openapi/src/model/paging_simplified_audiobook_object.dart';
import 'package:openapi/src/model/paging_simplified_chapter_object.dart';
import 'package:openapi/src/model/paging_simplified_episode_object.dart';
import 'package:openapi/src/model/paging_simplified_show_object.dart';
import 'package:openapi/src/model/paging_simplified_track_object.dart';
import 'package:openapi/src/model/paging_track_object.dart';
import 'package:openapi/src/model/play_history_object.dart';
import 'package:openapi/src/model/playlist_object.dart';
import 'package:openapi/src/model/playlist_owner_object.dart';
import 'package:openapi/src/model/playlist_track_object.dart';
import 'package:openapi/src/model/playlist_track_object_track.dart';
import 'package:openapi/src/model/playlist_tracks_ref_object.dart';
import 'package:openapi/src/model/playlist_user_object.dart';
import 'package:openapi/src/model/private_user_object.dart';
import 'package:openapi/src/model/public_user_object.dart';
import 'package:openapi/src/model/queue_object.dart';
import 'package:openapi/src/model/queue_object_currently_playing.dart';
import 'package:openapi/src/model/queue_object_queue_inner.dart';
import 'package:openapi/src/model/recommendation_seed_object.dart';
import 'package:openapi/src/model/recommendations_object.dart';
import 'package:openapi/src/model/remove_episodes_user_request.dart';
import 'package:openapi/src/model/remove_tracks_playlist_request.dart';
import 'package:openapi/src/model/remove_tracks_playlist_request_tracks_inner.dart';
import 'package:openapi/src/model/reorder_or_replace_playlists_tracks200_response.dart';
import 'package:openapi/src/model/reorder_or_replace_playlists_tracks_request.dart';
import 'package:openapi/src/model/resume_point_object.dart';
import 'package:openapi/src/model/save_albums_user_request.dart';
import 'package:openapi/src/model/save_episodes_user_request.dart';
import 'package:openapi/src/model/save_tracks_user_request.dart';
import 'package:openapi/src/model/saved_album_object.dart';
import 'package:openapi/src/model/saved_episode_object.dart';
import 'package:openapi/src/model/saved_show_object.dart';
import 'package:openapi/src/model/saved_track_object.dart';
import 'package:openapi/src/model/search200_response.dart';
import 'package:openapi/src/model/section_object.dart';
import 'package:openapi/src/model/segment_object.dart';
import 'package:openapi/src/model/show_base.dart';
import 'package:openapi/src/model/show_object.dart';
import 'package:openapi/src/model/show_object_all_of_episodes.dart';
import 'package:openapi/src/model/simplified_album_object.dart';
import 'package:openapi/src/model/simplified_artist_object.dart';
import 'package:openapi/src/model/simplified_audiobook_object.dart';
import 'package:openapi/src/model/simplified_chapter_object.dart';
import 'package:openapi/src/model/simplified_episode_object.dart';
import 'package:openapi/src/model/simplified_playlist_object.dart';
import 'package:openapi/src/model/simplified_show_object.dart';
import 'package:openapi/src/model/simplified_track_object.dart';
import 'package:openapi/src/model/start_a_users_playback_request.dart';
import 'package:openapi/src/model/time_interval_object.dart';
import 'package:openapi/src/model/track_object.dart';
import 'package:openapi/src/model/track_restriction_object.dart';
import 'package:openapi/src/model/transfer_a_users_playback_request.dart';
import 'package:openapi/src/model/unfollow_artists_users_request.dart';

part 'serializers.g.dart';

@SerializersFor([
  AddTracksToPlaylistRequest,
  AlbumBase,$AlbumBase,
  AlbumObject,
  AlbumObjectAllOfExternalIds,
  AlbumObjectAllOfTracks,
  AlbumRestrictionObject,
  ArtistDiscographyAlbumObject,
  ArtistObject,
  AudioAnalysisObject,
  AudioAnalysisObjectMeta,
  AudioAnalysisObjectTrack,
  AudioFeaturesObject,
  AudiobookBase,$AudiobookBase,
  AudiobookObject,
  AudiobookObjectAllOfChapters,
  AuthorObject,
  CategoryObject,
  ChangePlaylistDetailsRequest,
  ChapterBase,$ChapterBase,
  ChapterObject,
  ChapterObjectAllOfAudiobook,
  ChapterRestrictionObject,
  ContextObject,
  CopyrightObject,
  CreatePlaylistRequest,
  CurrentlyPlayingContextObject,
  CursorObject,
  CursorPagingObject,$CursorPagingObject,
  CursorPagingPlayHistoryObject,
  CursorPagingSimplifiedArtistObject,
  DeviceObject,
  DisallowsObject,
  EpisodeBase,$EpisodeBase,
  EpisodeObject,
  EpisodeObjectAllOfShow,
  EpisodeRestrictionObject,
  ErrorObject,
  ExplicitContentSettingsObject,
  ExternalIdObject,$ExternalIdObject,
  ExternalUrlObject,
  FollowArtistsUsersRequest,
  FollowPlaylistRequest,
  FollowersObject,
  GetAUsersAvailableDevices200Response,
  GetAnAlbum401Response,
  GetAnArtistsTopTracks200Response,
  GetAvailableMarkets200Response,
  GetCategories200Response,
  GetFollowed200Response,
  GetMultipleAlbums200Response,
  GetMultipleArtists200Response,
  GetMultipleAudiobooks200Response,
  GetMultipleEpisodes200Response,
  GetMultipleShows200Response,
  GetNewReleases200Response,
  GetRecommendationGenres200Response,
  GetSeveralAudioFeatures200Response,
  GetSeveralChapters200Response,
  GetUsersTopArtistsAndTracks200Response,
  GetUsersTopArtistsAndTracks200ResponseAllOfItemsInner,
  ImageObject,
  LinkedTrackObject,
  NarratorObject,
  PagingArtistDiscographyAlbumObject,
  PagingArtistObject,
  PagingFeaturedPlaylistObject,
  PagingObject,$PagingObject,
  PagingPlaylistObject,
  PagingPlaylistTrackObject,
  PagingSavedAlbumObject,
  PagingSavedEpisodeObject,
  PagingSavedShowObject,
  PagingSavedTrackObject,
  PagingSimplifiedAlbumObject,
  PagingSimplifiedAudiobookObject,
  PagingSimplifiedChapterObject,$PagingSimplifiedChapterObject,
  PagingSimplifiedEpisodeObject,$PagingSimplifiedEpisodeObject,
  PagingSimplifiedShowObject,
  PagingSimplifiedTrackObject,$PagingSimplifiedTrackObject,
  PagingTrackObject,
  PlayHistoryObject,
  PlaylistObject,
  PlaylistOwnerObject,
  PlaylistTrackObject,
  PlaylistTrackObjectTrack,
  PlaylistTracksRefObject,
  PlaylistUserObject,$PlaylistUserObject,
  PrivateUserObject,
  PublicUserObject,
  QueueObject,
  QueueObjectCurrentlyPlaying,
  QueueObjectQueueInner,
  RecommendationSeedObject,
  RecommendationsObject,
  RemoveEpisodesUserRequest,
  RemoveTracksPlaylistRequest,
  RemoveTracksPlaylistRequestTracksInner,
  ReorderOrReplacePlaylistsTracks200Response,
  ReorderOrReplacePlaylistsTracksRequest,
  ResumePointObject,
  SaveAlbumsUserRequest,
  SaveEpisodesUserRequest,
  SaveTracksUserRequest,
  SavedAlbumObject,
  SavedEpisodeObject,
  SavedShowObject,
  SavedTrackObject,
  Search200Response,
  SectionObject,
  SegmentObject,
  ShowBase,$ShowBase,
  ShowObject,
  ShowObjectAllOfEpisodes,
  SimplifiedAlbumObject,$SimplifiedAlbumObject,
  SimplifiedArtistObject,
  SimplifiedAudiobookObject,$SimplifiedAudiobookObject,
  SimplifiedChapterObject,
  SimplifiedEpisodeObject,
  SimplifiedPlaylistObject,
  SimplifiedShowObject,$SimplifiedShowObject,
  SimplifiedTrackObject,
  StartAUsersPlaybackRequest,
  TimeIntervalObject,
  TrackObject,
  TrackRestrictionObject,
  TransferAUsersPlaybackRequest,
  UnfollowArtistsUsersRequest,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(bool)]),
        () => ListBuilder<bool>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ImageObject)]),
        () => ListBuilder<ImageObject>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..add(AlbumBase.serializer)
      ..add(AudiobookBase.serializer)
      ..add(ChapterBase.serializer)
      ..add(CursorPagingObject.serializer)
      ..add(EpisodeBase.serializer)
      ..add(ExternalIdObject.serializer)
      ..add(PagingObject.serializer)
      ..add(PagingSimplifiedChapterObject.serializer)
      ..add(PagingSimplifiedEpisodeObject.serializer)
      ..add(PagingSimplifiedTrackObject.serializer)
      ..add(PlaylistUserObject.serializer)
      ..add(ShowBase.serializer)
      ..add(SimplifiedAlbumObject.serializer)
      ..add(SimplifiedAudiobookObject.serializer)
      ..add(SimplifiedShowObject.serializer)
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
