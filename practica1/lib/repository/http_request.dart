import 'dart:convert';
import 'secrets.dart';
import 'package:http/http.dart' as http;

class Singleton {
  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();
}

Future receive(String savedSong) async {
  var uri = Uri.parse('https://api.audd.io/');
  Map<String, String> bodi = {
    "token": API_TOKEN,
    "file": savedSong,
    "return": "apple_music,sportify"
  };
  dynamic response = http.post(uri, body: bodi);
  final res = jsonDecode(response.body);
  Map<String, String> info = {
    "Artist": res?['result']['artist'],
    "Title": res?['result']['title'],
    "Album": res?['result']['album'],
    "Image": res?["spotify"]["external_urls"]["spotify"],
    "AppleMusic": res?["apple_music"]["url"],
    "Spotify": res?["spotify"]["external_urls"]["spotify"]
  };
  return info;
}
