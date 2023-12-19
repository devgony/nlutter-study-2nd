import 'package:day12/presentation_layer/widgets/transverse_movie_list.dart';
import 'package:flutter/material.dart';

enum MovieType {
  popular('Popular Movies', 'popular'),
  nowPlaying('Now int Cinemas', 'now-playing'),
  comingSoon('Coming Soon', 'coming-soon');

  const MovieType(
    this.title,
    this.path,
  );
  final String title;
  final String path;
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Column(
              children: MovieType.values
                  .map((movieType) => TransverseMovieList(movieType: movieType))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
