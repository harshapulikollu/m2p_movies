import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/video.dart';

class VideoService {
  Future<List<Video>> fetchVideos() async {
    final response = await http.get(Uri.parse('https://itunes.apple.com/search?term=jackjohnson&entity=musicVideo'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['results'];
      return data.map((json) => Video.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load videos');
    }
  }
}
