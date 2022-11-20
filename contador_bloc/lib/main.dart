// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:contador_bloc/bloc/contador_bloc.dart';
import 'package:contador_bloc/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ContadorBloc>(
        create: (context) => ContadorBloc(),
        child: HomePage(),
      ),
    );
  }
}
