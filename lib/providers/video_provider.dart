import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/video.dart';
import '../services/video_service.dart';

final videoProvider = FutureProvider<List<Video>>((ref) async {
  return await VideoService().fetchVideos();
});
