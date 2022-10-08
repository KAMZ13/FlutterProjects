import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practica1/favorites.dart';

class Song extends StatelessWidget {
  Song({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Here´s the Beat",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Colors.deepPurple[300]),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(color: Colors.deepPurple[300]),
              child: Container(
                  child: Column(
                children: [
                  Image.asset(
                    'assets/ff.png',
                    width: 380,
                    fit: BoxFit.cover,
                  ),
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150, top: 50, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "Everlong",
                    style: TextStyle(
                      color: Colors.deepPurple[300],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "The Colour and the Shape",
                    style: TextStyle(
                      color: Colors.deepPurple[300],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150, bottom: 20),
              child: Row(
                children: [
                  Text(
                    "Foo Fighters",
                    style: TextStyle(
                      color: Colors.deepPurple[300],
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90, top: 70),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Favorites(),
                          ),
                        );
                      },
                      child: AvatarGlow(
                        //event: touch spotify to open song in spotify
                        //state: redirect user to spotify
                        endRadius: 30.0,
                        glowColor: Colors.lightBlue,
                        repeat: true,
                        showTwoGlows: true,
                        child: Material(
                          elevation: 40.0,
                          shape: CircleBorder(),
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(153, 98, 196, 68),
                            child: FaIcon(FontAwesomeIcons.spotify),
                            radius: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Favorites(),
                          ),
                        );
                      },
                      child: AvatarGlow(
                        //event: touch icon to open song in AppleMusic
                        endRadius: 30.0,
                        glowColor: Colors.lightBlue,
                        repeat: true,
                        showTwoGlows: true,
                        child: Material(
                          elevation: 40.0,
                          shape: CircleBorder(),
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 245, 104, 104),
                            child: FaIcon(
                              FontAwesomeIcons.music,
                              color: Color.fromARGB(255, 247, 242, 242),
                            ),
                            radius: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Favorites(),
                        ),
                      );
                    },
                    child: AvatarGlow(
                      //event: touch icon to open song in youtube
                      endRadius: 30.0,
                      glowColor: Colors.lightBlue,
                      repeat: true,
                      showTwoGlows: true,
                      child: Material(
                        elevation: 10.0,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(153, 247, 245, 245),
                          child: FaIcon(
                            FontAwesomeIcons.youtube,
                            color: Color.fromARGB(255, 209, 40, 40),
                          ),
                          radius: 50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
