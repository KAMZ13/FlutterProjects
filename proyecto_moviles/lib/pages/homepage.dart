import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('TutAapp', style: TextStyle(fontFamily: 'Chewy-Regular')),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
