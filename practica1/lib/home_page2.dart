import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class HomePage2 extends StatelessWidget {
  HomePage2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MusicFindApp'),
      ),
      body: Center(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Touch Circle to Find Song ",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Colors.deepPurple[300]),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 150, horizontal: 50),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              AvatarGlow(
                endRadius: 90.0,
                glowColor: Colors.cyan,
                repeat: true,
                showTwoGlows: true,
                child: Material(
                  elevation: 10.0,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    backgroundColor: Colors.white60,
                    child: Image.asset(
                      'assets/party.png',
                      height: 1000,
                    ),
                    radius: 90,
                  ),
                ),
              ),
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AvatarGlow(
                endRadius: 20.0,
                glowColor: Colors.cyan,
                repeat: true,
                showTwoGlows: true,
                child: Material(
                  elevation: 20.0,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(31, 34, 32, 32),
                    child: Image.asset(
                      'assets/love.png',
                      height: 1000,
                    ),
                    radius: 90,
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
