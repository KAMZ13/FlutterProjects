import 'package:flutter/material.dart';

class ItemSong extends StatelessWidget {
  final Map<String, String> content;
  ItemSong({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      child: Column(children: [Stack()]),
    );
  }
}
