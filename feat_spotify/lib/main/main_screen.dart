import 'dart:ui';

import 'package:feat_spotify/featured/models/spotify_featured_playlists.dart';
import 'package:feat_spotify/featured/view_models/spotify_featured_view_model.dart';
import 'package:feat_spotify/featured/views/spotify_featured_playlist_page.dart';
import 'package:feat_spotify/playlist/views/spotify_playlist_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  final PageController _pageController = PageController(
    viewportFraction: 0.8,
  );

  final ValueNotifier<double> _scroll = ValueNotifier(0.0);

  int _currentPage = 0;
  bool _isDetail = false;

  void _openDetail() {
    setState(() {
      _isDetail = true;
    });
  }

  void _openPlaylists() {
    setState(() {
      _isDetail = false;
    });
  }

  void _onPageChanged(int newPage) {
    setState(() {
      _currentPage = newPage;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (_pageController.page == null) {
        return;
      }
      _scroll.value = _pageController.page!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final featuredViewModel = ref.watch(spotifyFeaturedViewModelProvider);
    final playlists = featuredViewModel.value?.playlists.items;

    return Scaffold(
      body: (featuredViewModel.isLoading || featuredViewModel.value == null)
          ? Center(
              child: Transform.scale(
                scale: 2,
                child: const CircularProgressIndicator.adaptive(),
              ),
            )
          : Stack(
              children: [
                _buildBackgroundImage(playlists!),
                _buildPageView(playlists),
                _buildSlideButton(),
                _buildPlaylistView(playlists),
              ],
            ),
    );
  }

  Widget _buildBackgroundImage(List<SpotifySimplifiedPlaylist> playlists) {
    return Transform.scale(
      scale: 1.2,
      child: AnimatedSwitcher(
        duration: 500.ms,
        child: Container(
          key: ValueKey(playlists[_currentPage].id),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                playlists[_currentPage].images.first.url,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
            ),
            child: Container(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
        ),
      ),
    )
        .animate(
          target: _isDetail ? 1 : 0,
        )
        .slideY(
          duration: 600.ms,
          begin: -0.1,
          end: 0.1,
          curve: Curves.easeInOutCubic,
        )
        .color(
          blendMode: BlendMode.darken,
          begin: Colors.transparent,
          end: Colors.black.withOpacity(0.3),
        );
  }

  Widget _buildPageView(List<SpotifySimplifiedPlaylist> playlists) {
    return AbsorbPointer(
      absorbing: _isDetail,
      child: PageView.builder(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        itemCount: playlists.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ValueListenableBuilder(
            valueListenable: _scroll,
            builder: (context, value, child) {
              final difference = (value - index).abs();
              final scale = 1 - difference * 0.15;

              return Transform.scale(
                scale: scale,
                child: SpotifyFeaturedPlaylistPage(
                  playlist: playlists[index],
                ),
              )
                  .animate(
                    target: _isDetail ? 1 : 0,
                  )
                  .slideY(
                    duration: 700.ms,
                    begin: 0,
                    end: 0.75,
                    curve: Curves.easeInOutCubic,
                  );
            },
          );
        },
      ),
    );
  }

  Widget _buildSlideButton() {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            slideButton(SlideType.more),
            const Spacer(),
            slideButton(SlideType.playlists),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector slideButton(SlideType to) {
    Animate column = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(to.icon, size: 32),
        Text(
          to.name,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ).animate(
      target: _isDetail ? 1 : 0,
    );

    final (void Function() onTap, Animate child) = switch (to) {
      SlideType.more => (_openDetail, column.fadeOut()),
      SlideType.playlists => (_openPlaylists, column.fadeIn(delay: 500.ms))
    };

    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }

  Widget _buildPlaylistView(List<SpotifySimplifiedPlaylist> playlists) {
    return SpotifyPlaylistWidget(
      key: ValueKey(playlists[_currentPage].id),
      isDetail: _isDetail,
      playlistId: playlists[_currentPage].id,
    )
        .animate(
          target: _isDetail ? 1 : 0,
        )
        .slideY(
          duration: 700.ms,
          begin: -1.0,
          end: 0.15,
          curve: Curves.easeInOutCubic,
        );
  }
}

enum SlideType {
  more(name: "More", icon: Icons.keyboard_arrow_up_rounded),
  playlists(name: "Playlists", icon: Icons.keyboard_arrow_down_rounded);

  const SlideType({required this.name, required this.icon});
  final String name;
  final IconData icon;
}
