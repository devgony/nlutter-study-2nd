import 'package:flutter/material.dart';

import '../services/api_service.dart';
import '../widgets/movie_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
        surfaceTintColor: Theme.of(context).colorScheme.background,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 120),
            MovieCardWidget(
              fetchType: FetchType.popular(),
              imageType: ImageType.landscape,
              isDisplayTitle: false,
            ),
            MovieCardWidget(
              fetchType: FetchType.nowPlaying(),
              imageType: ImageType.square,
            ),
            MovieCardWidget(
              fetchType: FetchType.comingSoon(),
              imageType: ImageType.square,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
