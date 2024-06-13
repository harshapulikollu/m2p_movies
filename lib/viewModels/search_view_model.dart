import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/video.dart';

final searchViewModelProvider =
StateNotifierProvider<SearchViewModel, List<Video>>((ref) {
  return SearchViewModel();
});

class SearchViewModel extends StateNotifier<List<Video>> {
  SearchViewModel() : super([]);

  void onSearch(String query, List<Video> videos) {
    state = [];
    if (query.isNotEmpty) {
      final result = videos
          .where((element) => element.trackName
          .toString()
          .toLowerCase()
          .contains(query.toString().toLowerCase()))
          .toSet()
          .toList();
      state.addAll(result);
    }
  }
}