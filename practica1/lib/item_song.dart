import 'package:flutter/material.dart';

class ItemSong extends StatelessWidget {
  final Map<String, String> song;
  ItemSong({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.2,
      padding: EdgeInsets.all(12),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "${song["image"]}",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 90,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${song["song"]}",
                  ),
                  Text(
                    "${song["artist"]}",
                  ),
                  Text(
                    "${song["album"]}",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
