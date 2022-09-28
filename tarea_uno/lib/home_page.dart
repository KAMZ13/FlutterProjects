import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? _selected;
  final _pictureUrl =
      'file:///C:/Users/Kassandra%20Montemayor/Downloads/63081-profile-computer-social-user-icons-free-frame.png';
  void _reset() {
    _selected = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mc Flutter"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        margin: EdgeInsets.all(18),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 30,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Flutter McFlutter",
                      style: TextStyle(fontSize: 25),
                    ),
                    // ignore: prefer_const_constructors
                    Text("Experienced App Developer",
                        style: const TextStyle(fontSize: 15)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [Text("123 Main Street"), Text("(415) 555 - 0198")],
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.accessibility,
                    color: _selected == true ? Colors.indigo : Colors.black,
                  ),
                  onPressed: () {
                    _selected = true;
                    setState(() {});
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                          content: Text("Unete a un club con otras personas"),
                        ),
                      );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
