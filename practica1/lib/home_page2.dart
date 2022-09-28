import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MusicFindApp'),
      ),
      body: Center(
          child: Row(
        children: [
          Text("Touch Circle to Find Song"),
          AvatarGlow(
            endRadius: 60.0,
            child: Material(
              elevation: 8.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.pink[300],
              ),
            ),
          ),
        ],
      ),),
    );
  }
}
