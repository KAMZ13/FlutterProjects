import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                child: Row(children: [
                  Column(
                    children: [
                      Image.asset('assets/ff.png',
                          width: 350, fit: BoxFit.cover),
                    ],
                  )
                ]),
              ),
              Row(
                children: [],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 220, left: 50),
                child: Row(
                  children: [
                    AvatarGlow(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: AvatarGlow(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: AvatarGlow(
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
        ));
  }
}
