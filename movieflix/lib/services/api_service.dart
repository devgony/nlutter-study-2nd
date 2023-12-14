import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/movie_meta.dart';

sealed class FetchType {
  final String path;
  FetchType(this.path);
  factory FetchType.popular() => Popular("popular");
  factory FetchType.nowPlaying() => NowPlaying("now-playing");
  factory FetchType.comingSoon() => ComingSoon("coming-soon");

  getUrl() => 'https://movies-api.nomadcoders.workers.dev/$path';
}

class Popular extends FetchType {
  Popular(super.path);
}

class NowPlaying extends FetchType {
  NowPlaying(super.path);
}

class ComingSoon extends FetchType {
  ComingSoon(super.path);
}

class ApiService {
  static const String _baseUrl = 'https://movies-api.nomadcoders.workers.dev';
  static const String _comingSoon = 'coming-soon';
  static const String _detail = 'movie?id=';

  static const String _resultsField = 'results';

  ApiService._(); // private constructor to prevent calling constructor outside

  static Future<dynamic> fetchData(
    String path,
  ) async {
    try {
      final uri = Uri.parse(path);
      final response = await http.get(uri);
      return _utf8JsonDecode(response.bodyBytes)[_resultsField];
    } catch (e) {
      throw Exception(
        'API 요청 실패',
      );
    }
  }

  static Future<List<SimpleMovie>> getMovies(FetchType fetchType) async {
    final List<dynamic> data = await fetchData(fetchType.getUrl());
    return data.map<SimpleMovie>((e) => SimpleMovie.fromJson(e)).toList();
  }

  static Future<List<SimpleMovie>> getPopularMovies() async {
    return await getMovies(FetchType.popular());
  }

  static Future<List<SimpleMovie>> getNowPlayingMovies() async {
    return getMovies(FetchType.nowPlaying());
  }

  static Future<List<SimpleMovie>> getComingSoonMovies() async {
    final uri = Uri.parse('$_baseUrl/$_comingSoon');
    final response = await http.get(uri);
    _handleErrorStatusCode(response);
    _printDebug(response.body);
    final List<dynamic> results =
        _utf8JsonDecode(response.bodyBytes)[_resultsField];
    return results.map((e) => SimpleMovie.fromJson(e)).toList();
  }

  static Future<DetailMovie> getDetailMovie(int id) async {
    final uri = Uri.parse('$_baseUrl/$_detail$id');
    final response = await http.get(uri);
    _handleErrorStatusCode(response);
    _printDebug(response.body);
    return DetailMovie.fromJson(_utf8JsonDecode(response.bodyBytes));
  }

  static void _handleErrorStatusCode(http.Response response) {
    if (response.statusCode != 200) {
      throw Exception(
        'API 요청 실패 (url: ${response.request?.url}, status code: ${response.statusCode}',
      );
    }
  }

  static void _printDebug(dynamic something) {
    if (kDebugMode) {
      // print(something);
    }
  }

  static dynamic _utf8JsonDecode(Uint8List unit) {
    return jsonDecode(utf8.decode(unit));
  }
}
