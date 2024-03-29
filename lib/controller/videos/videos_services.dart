import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix/model/videos/videos.dart';

String getUrl =
    'https://gist.githubusercontent.com/poudyalanil/1685db9c4f17c68d5cb9ffaa3f59e3a6/raw/8cadc7e7bd1a3d4b810b50be0c08a86b224de128/live-videos.json';

Future<List<Videos>> getVideos() async {
  final _response = await http.get(Uri.parse(getUrl));
  if (_response.statusCode == 200) {
    final _bodyAsJson = jsonDecode(_response.body) as List<dynamic>;
    final _data = _bodyAsJson.map((data) => Videos.fromJson(data)).toList();
    return _data;
  } else {
    return [];
  }
}
