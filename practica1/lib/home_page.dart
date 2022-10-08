import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:practica1/favorites.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                //event touch avatarglow to begin recording
                endRadius: 90.0,
                curve: Curves.bounceInOut,
                glowColor: Colors.cyan,
                child: Material(
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                    child: FaIcon(
                      FontAwesomeIcons.music,
                      color: Colors.purple[300],
                      size: 40,
                    ),
                    radius: 40,
                  ),
                ),
              ),
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => Favorites()));
                },
                child: AvatarGlow(
                  //event: touch heart to add to favorites
                  endRadius: 40.0,
                  glowColor: Colors.cyan,
                  repeat: true,
                  showTwoGlows: true,
                  child: Material(
                    elevation: 20.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 31, 43, 44),
                      child: FaIcon(
                        FontAwesomeIcons.heart,
                        color: Colors.purple[300],
                      ),
                      radius: 40,
                    ),
                  ),
                  shape: BoxShape.circle,
                  animate: true,
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
