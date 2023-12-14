import 'package:flutter/material.dart';
import 'package:movieflix/services/api_service.dart';

import '../models/movie_meta.dart';
import '../screens/detail_screen.dart';
import '../utils/tag_builder.dart';

enum ImageType {
  square(150, 150),
  landscape(220, 320);

  final double height;
  final double width;
  const ImageType(
    this.height,
    this.width,
  );
}

class MovieCardWidget extends StatelessWidget {
  const MovieCardWidget({
    super.key,
    required this.fetchType,
    required this.imageType,
    this.isDisplayTitle = true,
  });

  final FetchType fetchType;
  final ImageType imageType;
  final bool isDisplayTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            fetchType.title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        SizedBox(
          height: imageType.height +
              switch (isDisplayTitle) {
                true => 80,
                false => 10,
              },
          child: FutureBuilder(
            future: ApiService.getMovies(fetchType),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(snapshot.error.toString()),
                      duration: const Duration(seconds: 3),
                    ),
                  );
                });
                return const Center(
                  child: Text('Something went wrong'),
                );
              }
              if (!snapshot.hasData) {
                return _EmptyCardListWidget(
                  imageWidth: imageType.width,
                  imageHeight: imageType.height,
                  isDisplayTitle: isDisplayTitle,
                );
              }
              return _CardListWidget(
                imageWidth: imageType.width,
                imageHeight: imageType.height,
                isDisplayTitle: isDisplayTitle,
                movies: snapshot.data!,
                middleTag: fetchType.title,
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CardListWidget extends StatelessWidget {
  const _CardListWidget({
    required this.imageWidth,
    required this.imageHeight,
    required this.isDisplayTitle,
    required this.movies,
    required this.middleTag,
  });

  final double imageWidth;
  final double imageHeight;
  final bool isDisplayTitle;
  final List<SimpleMovie> movies;
  final String middleTag;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: movies.length,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemBuilder: (context, index) {
        // cache image
        precacheImage(Image.network(movies[index].imageBigUrl!).image, context);

        // widget
        return GestureDetector(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  id: movies[index].id,
                  title: movies[index].title,
                  imageUrl: movies[index].imageBigUrl!,
                  middleTag: middleTag,
                ),
              ),
            ),
          },
          child: Container(
            width: imageWidth,
            decoration: const BoxDecoration(color: Colors.transparent),
            clipBehavior: Clip.hardEdge,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: TagBuilder.buildImageTag(middleTag, movies[index].id),
                  child: Container(
                    width: imageWidth,
                    height: imageHeight,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.network(
                      movies[index].imageUrl!,
                      height: imageHeight,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                if (isDisplayTitle)
                  Text(
                    movies[index].title,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 20),
    );
  }
}

class _EmptyCardListWidget extends StatelessWidget {
  const _EmptyCardListWidget({
    required this.imageWidth,
    required this.imageHeight,
    required this.isDisplayTitle,
  });

  final double imageWidth;
  final double imageHeight;
  final bool isDisplayTitle;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 20),
          for (var i = 0; i < 3; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: imageWidth,
                    height: imageHeight,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (isDisplayTitle)
                    Container(
                      width: imageWidth - 10,
                      height: 18,
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.3),
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
