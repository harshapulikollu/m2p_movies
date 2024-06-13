import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:m2p_movies/models/video.dart';

import '../providers/search_provider.dart';
import '../viewModels/search_view_model.dart';

class Search extends ConsumerWidget {
  const Search({super.key, required this.videos});
  final List<Video> videos;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQuery = ref.watch(searchProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: TextField(
        decoration: const InputDecoration(
          labelText: 'Search Tunes',
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          ref.read(searchProvider.notifier).update((state) => state = value);
          ref
              .read(searchViewModelProvider.notifier)
              .onSearch(searchQuery, videos);
        },
        onEditingComplete: () {
          ref
              .read(searchViewModelProvider.notifier)
              .onSearch(searchQuery, videos);
        },
      ),
    );
  }
}
