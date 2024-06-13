import 'package:flutter/material.dart';
import 'package:m2p_movies/widgets/grid_view_item.dart';

import '../models/video.dart';

class VideosGridView extends StatelessWidget {
  const VideosGridView({super.key, required this.videos});
  final List<Video> videos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemCount: videos.length,
          itemBuilder: (context, index) {
            return GridViewItem(video: videos[index],);
          }),
    );
  }
}
