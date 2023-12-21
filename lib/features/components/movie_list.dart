import 'package:deviflix/core/api/api_service.dart';
import 'package:deviflix/features/home/functions/get_coming_soon.dart';
import 'package:deviflix/features/home/functions/get_now_on_cinema.dart';
import 'package:deviflix/features/home/functions/get_popular_movies.dart';
import 'package:deviflix/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key, required this.movieOrder});
  final MovieOrder movieOrder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: movieOrder.height,
      child: FutureBuilder(
        future: ApiService.getMovies(movieOrder),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('An error occurred while loading the movies'),
              ),
            );
          }
          if (snapshot.hasData) {
            return switch (movieOrder) {
              MovieOrder.popular => PopularMoviesView(snapshot: snapshot),
              MovieOrder.nowPlaying => getNowOnCinema(snapshot, 136, 96),
              MovieOrder.upcoming => getComingSoon(snapshot, 86, 131),
            };
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
