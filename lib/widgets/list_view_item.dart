import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:m2p_movies/pages/details.dart';

import '../models/video.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key, required this.video});
  final Video video;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedNetworkImage(
        width: 100.0,
        imageUrl: video.artworkUrl100 ?? 'http://via.placeholder.com/350x150',
        progressIndicatorBuilder: (context, url, downloadProgress) => Center(
            child: CircularProgressIndicator(value: downloadProgress.progress)),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
      title: Text(
        video.trackName,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(
              video: video,
            ),
          ),
        );
      },
    );
  }
}
