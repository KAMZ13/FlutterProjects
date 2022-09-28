import 'package:flutter/material.dart';

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
                      Image.asset('assets/party.png',
                          width: 350, height: 300, fit: BoxFit.cover),
                    ],
                  )
                ]),
              ),
            ],
          ),
        ));
  }
}
