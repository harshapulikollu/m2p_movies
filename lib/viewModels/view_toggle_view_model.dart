import 'package:flutter_riverpod/flutter_riverpod.dart';

final toggleViewModelProvider = StateNotifierProvider<ViewToggleViewModel, bool>(
      (ref) => ViewToggleViewModel(),
);

class ViewToggleViewModel extends StateNotifier<bool> {
  ViewToggleViewModel() : super(false); // Initial state: not toggled

  void toggle() {
    state = !state;
  }
}