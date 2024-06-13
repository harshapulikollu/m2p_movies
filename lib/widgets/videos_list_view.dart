import 'package:flutter/material.dart';

import '../models/video.dart';
import 'list_view_item.dart';

class VideosListView extends StatelessWidget {
  const VideosListView({super.key, required this.videos});
  final List<Video> videos;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListViewItem(video: videos[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 16.0);
        },
        itemCount: videos.length);
  }
}
