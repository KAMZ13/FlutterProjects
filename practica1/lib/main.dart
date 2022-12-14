import 'package:flutter/material.dart';
import 'package:practica1/favorites.dart';
import 'package:practica1/song.dart';
import 'home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: Colors.deepPurple[400]),
      home: HomePage2(),
    );
  }
}
