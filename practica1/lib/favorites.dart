import 'package:flutter/material.dart';
import 'package:practica1/item_song.dart';

class Favorites extends StatelessWidget {
  Favorites({super.key});
  final List<Map<String, String>> _listElements = [
    {
      "artist": "foo fighters",
      "song": "Ranking: ★★★",
      "image": "https://i.imgur.com/tpHc9cS.jpg",
      "album": "Everlong"
    },
    {
      "artist": "foo fighters",
      "song": "Ranking: ★★★",
      "image": "https://i.imgur.com/tpHc9cS.jpg",
      "album": "Everlong"
    },
    {
      "artist": "foo fighters",
      "song": "Ranking: ★★★",
      "image": "https://i.imgur.com/tpHc9cS.jpg",
      "album": "Everlong"
    },
    {
      "artist": "foo fighters",
      "song": "Ranking: ★★★",
      "image": "https://i.imgur.com/tpHc9cS.jpg",
      "album": "Everlong"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
      ),
      body: ListView.builder(
        itemCount: _listElements.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemSong(song: _listElements[index]);
        },
      ),
    );
  }
}
