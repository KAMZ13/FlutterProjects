import 'package:blocp/bloc/colors_bloc.dart';
import 'package:blocp/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//cada que modifique el main.dart, debo detener y compilar =)
void main() => runApp(BlocProvider(
      create: (context) => ColorsBloc(), //pquiero proveer todo mi bloc
      child: MyApp(), //a toda mi app
    ));

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}
