import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:m2p_movies/viewModels/view_toggle_view_model.dart';
import 'package:m2p_movies/widgets/videos_grid_view.dart';

import '../providers/search_provider.dart';
import '../providers/video_provider.dart';
import '../viewModels/search_view_model.dart';
import '../widgets/search.dart';
import '../widgets/videos_list_view.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final videosList = ref.watch(videoProvider);
    final searchController = ref.watch(searchViewModelProvider);
    final isGridView = ref.watch(toggleViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('M2P Tunes'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(toggleViewModelProvider.notifier).toggle();
              },
              icon: Icon(!isGridView ? Icons.grid_view : Icons.list_outlined))
        ],
      ),
      body: SafeArea(
        child: videosList.when(
          data: (videos) {
            return Column(
              children: [
                Search(videos: videos),
                const SizedBox(height: 16.0),
                Expanded(
                  child: isGridView
                      ? VideosGridView(
                          videos: searchController.isNotEmpty
                              ? searchController
                              : videos)
                      : VideosListView(
                          videos: searchController.isNotEmpty
                              ? searchController
                              : videos),
                ),
              ],
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stack) => Center(
            child: Text('Error: $error'),
          ),
        ),
      ),
    );
  }
}
