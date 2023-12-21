import 'package:deviflix/core/core.dart';
import 'package:deviflix/features/components/cinema_background.dart';
import 'package:deviflix/features/components/movie_list.dart';
import 'package:deviflix/features/components/movie_title.dart';
import 'package:deviflix/features/home/functions/get_coming_soon.dart';
import 'package:deviflix/features/home/functions/get_now_on_cinema.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../core/api/api_service.dart';
import '../../../model/movie_model.dart';
import '../functions/get_popular_movies.dart';

enum MovieOrder {
  popular(
    value: "popular",
    imagePath: '',
    height: 371,
  ),
  nowPlaying(
    value: "now-playing",
    title: 'Now On Cinema',
    imagePath: 'assets/images/flame.png',
    left: 15,
    width: 16,
    height: 140,
    crossAxisAlignment: CrossAxisAlignment.start,
  ),
  upcoming(
    value: "coming-soon",
    title: 'Coming Soon',
    imagePath: "assets/images/ddoza.png",
    left: 10,
    width: 22,
    height: 170,
    crossAxisAlignment: CrossAxisAlignment.center,
  );

  const MovieOrder({
    required this.value,
    this.title = '',
    required this.imagePath,
    this.left = 0,
    this.width,
    required this.height,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });
  final String value;
  final String title;
  final String imagePath;
  final double left;
  final double? width;
  final double height;
  final CrossAxisAlignment crossAxisAlignment;
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<MovieModel>> popularMovies =
      ApiService.getMovies(MovieOrder.popular);
  final Future<List<MovieModel>> nowPlaying =
      ApiService.getMovies(MovieOrder.nowPlaying);
  final Future<List<MovieModel>> upcoming =
      ApiService.getMovies(MovieOrder.upcoming);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      left: false,
      right: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            leading: Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                icon: DFIcons.bars,
                onPressed: () {},
              ),
            ),
            title: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/deviflix.png',
                width: 118,
              ),
            ),
            actions: [
              Align(
                alignment: Alignment.bottomCenter,
                child: IconButton(
                  icon: DFIcons.search,
                  onPressed: () {},
                ),
              ),
            ],
            flexibleSpace: Column(
              children: [
                Container(
                  height: kToolbarHeight,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: const Alignment(0.0, 0.6),
                        end: Alignment.bottomCenter,
                        colors: [
                          Theme.of(context).scaffoldBackgroundColor,
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const MovieList(movieOrder: MovieOrder.popular),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF1D1D1D),
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      width: 8,
                      color: Color(0xFF262626),
                    ),
                  ),
                ),
                height: 210,
                child: const Column(
                  children: [
                    SizedBox(height: 10),
                    MoiveTitle(movieOrder: MovieOrder.nowPlaying),
                    SizedBox(height: 10),
                    MovieList(movieOrder: MovieOrder.nowPlaying),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              const MoiveTitle(movieOrder: MovieOrder.upcoming),
              const MovieList(movieOrder: MovieOrder.upcoming),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
